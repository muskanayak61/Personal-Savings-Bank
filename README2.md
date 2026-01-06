# Simple Voting Smart Contract

## Description
This contract allows users to vote between two candidates.
Each wallet address can vote only once.

## Features
- Two candidates
- One vote per wallet
- Transparent vote count
- Admin can turn voting ON or OFF

## Ownership Logic
The address that deploys the contract becomes the admin.
Only the admin can toggle the voting status.

## Functions
- vote(uint candidateId)
- getVotes()
- toggleVoting(bool status)
