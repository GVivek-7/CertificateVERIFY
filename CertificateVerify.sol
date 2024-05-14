// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Sathyabama_Certificate {
    struct Certificate {
        string candidate_name;
        string course_name;
        string uid;
        string ipfs_hash;
        string org_name;
        string certificate_name;
    }

    mapping(string => Certificate) public certificates;
    event CertificateGenerated(string Certificate_id);

    function GenerateCertificate(
        string memory candidate_name,
        string memory course_name,
        string memory uid,
        string memory ipfs_hash,
        string memory org_name,
        string memory certificate_name
    ) public {
        string memory _certificate_id = uid; // Assuming uid is the certificate id
        
        require(bytes(certificates[_certificate_id].ipfs_hash).length == 0, "Certificate with given ID already exists");

        Certificate memory cert = Certificate({
            uid: uid,
            candidate_name: candidate_name,
            course_name: course_name,
            org_name: org_name,
            ipfs_hash: ipfs_hash,
            certificate_name: certificate_name
        });

        certificates[_certificate_id] = cert;

        emit CertificateGenerated(_certificate_id);
    }

    function getCertificate(string memory certificateId) public view returns (
        string memory _uid,
        string memory _course_name,
        string memory _org_name,
        string memory _ipfs_hash,
        string memory _candidate_name
    ) {
        Certificate memory cert = certificates[certificateId];
        require(bytes(cert.ipfs_hash).length != 0, "Certificate with this ID does not exist");

        return (
            cert.uid,
            cert.course_name,
            cert.org_name,
            cert.ipfs_hash,
            cert.candidate_name
        );
    }

    function isVerified(string memory certificateId) public view returns (bool) {
        return bytes(certificates[certificateId].ipfs_hash).length != 0;
    }
}
