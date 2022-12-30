// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

error EtherWallet__notOwner();

contract EtherWallet {
    address payable public owner;

    // constructor will initialize that only owner can withdraw Ether
    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    // if msg.sender is not an owner than revert transaction and throws an error
    function sendEth(uint256 _amount) public payable {
        if (msg.sender != owner) {
            revert EtherWallet__notOwner();
        }

        // require(msg.sender == owner,"Caller is not an Owner");
        payable(msg.sender).transfer(_amount);
    }

    // getter function
    function getBalance() public payable returns (uint256) {
        return address(this).balance;
    }
}
