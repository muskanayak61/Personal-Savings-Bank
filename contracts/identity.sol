// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Identity {
    string name;
    uint age;

    constructor() {
        name = "Muskan";
        age = 19;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint) {
        return age;
    }
    function setAge() public
    {
        age =age+100;
    }
}
    
