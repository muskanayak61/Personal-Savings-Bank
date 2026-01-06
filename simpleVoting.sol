// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {

    address public admin;

    uint public candidate1Votes;
    uint public candidate2Votes;

    bool public votingOn;

    mapping(address => bool) public hasVoted;

    constructor() {
        admin = msg.sender;     // deployer becomes admin
        votingOn = true;        // voting starts ON
    }

    // Modifier: only admin can call
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin allowed");
        _;
    }

    // Vote function
    function vote(uint _candidateId) public {
        require(votingOn, "Voting is OFF");
        require(!hasVoted[msg.sender], "You already voted");
        require(_candidateId == 1 || _candidateId == 2, "Invalid candidate");

        hasVoted[msg.sender] = true;

        if (_candidateId == 1) {
            candidate1Votes++;
        } else {
            candidate2Votes++;
        }
    }

    // Get votes
    function getVotes() public view returns (uint, uint) {
        return (candidate1Votes, candidate2Votes);
    }

    // Admin can turn voting ON or OFF
    function toggleVoting(bool _status) public onlyAdmin {
        votingOn = _status;
    }
}