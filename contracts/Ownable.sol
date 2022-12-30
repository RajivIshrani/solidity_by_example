// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

error Ownable__isntOwner();
error Ownable__invalidAddress();

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) {
            revert Ownable__isntOwner();
        }
        // require(msg.sender == owner,"caller is not owner");
        _;
    }

    function newOwner(address _newOwner) external onlyOwner {
        if (_newOwner == address(0)) {
            revert Ownable__invalidAddress();
        }
        // require(_newOwner != address(0),"Invalid Address");
        owner = _newOwner;
    }

    function onlyOwnerCanCall() external onlyOwner {}

    function anyoneCanCall() external {}
}
