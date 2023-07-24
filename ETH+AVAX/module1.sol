// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract statusChecker {

    mapping(address => uint16) public status;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        // assert statement
        assert(msg.sender == owner);
        _;
    }

    function changeStatus(address _subject,uint16 _status) public onlyOwner() {

        if (_status > 4) {
            // revert statement
            revert("There are no ranks above level 4");
        } else {
            status[_subject] = _status;
        }
    }

    function checkStatus(address _subject) public view returns (uint16) {
        // require statement
        require (status[msg.sender] > 2, "You don't have enough clearance to check other people's status");
        return status[_subject];
    }
}
