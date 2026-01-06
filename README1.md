# Personal Savings Bank Smart Contract

## Overview
This smart contract acts as a personal digital vault for storing Ether (ETH).

## Ownership Logic
The contract owner is set during deployment using msg.sender.
Only the owner can withdraw ETH.

## Functions
- deposit(): Allows anyone to deposit ETH
- getBalance(): Returns contract balance
- withdraw(uint amount): Owner-only withdrawal

## Security
Uses require() to prevent unauthorized withdrawals.