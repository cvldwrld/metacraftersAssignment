## Name Register 
The Name Register is a smart contract that allows users to register and manage their names. This contract provides a set of functions to facilitate name registration, change, and retrieval on the blockchain. It demonstrates the use of various control structures within smart contracts, including assert, require, and revert.

## Features
The contract includes the following features:

Name Registration: Users can register their names by calling the registerName function. Once registered, their name is associated with their address on the blockchain.

Name Change: Registered users can change their names using the changeName function. The function validates whether the user is registered before allowing the name change.

Name Retrieval: Registered users can retrieve their registered names using the checkName function. The function requires users to be registered before they can retrieve their names.

## Functions
registerName(string memory name) public
This function allows users to register their name on the blockchain. If the user is already registered, the function will revert with an error message indicating that the user is already registered. Otherwise, the provided name will be associated with the sender's Ethereum address, and their registration status will be set to true.

changeName(string memory newName) public
Registered users can change their registered name using this function. The function checks whether the sender is a registered user and ensures that the provided new name is not empty. If both conditions are met, the sender's name is updated with the new name.

checkName() public view returns (string memory name)
This read-only function allows registered users to retrieve their registered name from the blockchain. It requires the sender to be a registered user; otherwise, it will revert with an error message.

## Control Structures
The contract demonstrates the use of different control structures to manage contract execution:

assert: Used in the changeName function to ensure that the sender is a registered user and that the provided new name is not empty.

require: Employed in both the checkName and registerName functions to ensure that the sender is a registered user before allowing name retrieval and to prevent re-registration of existing users, respectively.

revert: In the registerName function, if a user attempts to re-register, the contract reverts execution with an appropriate error message.

## Usage
Deploy the smart contract to the Ethereum blockchain, ensuring you have the appropriate compiler version (0.8.13) set.

Interact with the contract using Ethereum wallets or DApp interfaces. Users can call functions to register, change, and retrieve their names.

## License
This smart contract is released under the MIT License. You can find the licensing details at the top of the contract code.

## Author
cvldwrld with the help of the Metacrafters tutorial
