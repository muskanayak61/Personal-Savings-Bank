// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SavingsBank {

    // Owner of the contract
    address public owner;

    // Constructor runs only once at deployment
    constructor() {
        owner = msg.sender;
    }

    // Deposit ETH into the contract
    function deposit() public payable {
        require(msg.value > 0, "Send some ETH");
    }

    // Get total ETH balance of the contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Withdraw ETH (only owner)
    function withdraw(uint _amount) public {
        require(msg.sender == owner, "Not the owner");
        require(_amount <= address(this).balance, "Insufficient balance");

        payable(owner).transfer(_amount);
    }
}