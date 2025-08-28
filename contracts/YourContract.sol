// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract YourContract {
    string public message;
    address public owner;

    event MessageUpdated(string oldMessage, string newMessage);

    constructor(string memory _message) {
        owner = msg.sender;
        message = _message;
    }

    function updateMessage(string memory _newMessage) public {
        require(msg.sender == owner, "Only owner can update message");
        emit MessageUpdated(message, _newMessage);
        message = _newMessage;
    }
}