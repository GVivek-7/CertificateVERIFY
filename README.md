**Overview**
The Sathyabama Certificate Smart Contract is a decentralized application (DApp) built on the Ethereum blockchain using Solidity. It provides a secure and transparent method for generating and verifying certificates issued by Sathyabama University. The smart contract allows users to create unique certificates with associated metadata, store them on the IPFS network, and verify their authenticity using blockchain technology.

**Features**
Certificate Generation: Users can create certificates by providing candidate information such as name, course name, organization name, and certificate name.
IPFS Storage: Certificates are stored securely on the InterPlanetary File System (IPFS), ensuring data integrity and accessibility.
Certificate Verification: The smart contract enables certificate verification by providing methods to retrieve certificate details and check their validity.
Event Logging: Events are emitted whenever a certificate is generated, providing a transparent record of certificate creation activity.
Usage
**Prerequisites**
Install Metamask or any Ethereum wallet supporting Web3.
Connect to an Ethereum network such as Mainnet or a test network like Ropsten.
Deploy the smart contract on the Ethereum blockchain using Remix or any other Solidity IDE.
Interacting with the Smart Contract
Deploy the smart contract on the Ethereum blockchain.
Use the provided functions to generate certificates by supplying candidate information.
Store the generated certificate on IPFS and obtain the IPFS hash.
Verify the authenticity of a certificate by querying its details or checking its existence.
**Smart Contract Functions**
GenerateCertificate: Generates a new certificate with the provided candidate information and stores it on the blockchain.
getCertificate: Retrieves the details of a certificate using its unique identifier.
isVerified: Checks whether a certificate with the given identifier exists, indicating its validity.
**Contributing**
Contributions to the project are welcome! If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

