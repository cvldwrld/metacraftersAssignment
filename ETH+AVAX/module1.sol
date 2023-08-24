// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract nameRegister {

    mapping(address => string) private names;

    mapping(address => bool) private isUser;

    function changeName(string memory newName) public {

            assert(isUser[msg.sender]);  
            assert(bytes(newName).length > 0);

            names[msg.sender] = newName;
    }

    function checkName() public view returns (string memory name) {

        require(isUser[msg.sender], "First register your name before you call this function");

        name = names[msg.sender];
    }

    function registerName(string memory name) public {

        if (isUser[msg.sender]) {revert("You are already a user, use changeName if you want to change your name"); } 

        
        names[msg.sender] = name;
        isUser[msg.sender] = true;
    }
}
