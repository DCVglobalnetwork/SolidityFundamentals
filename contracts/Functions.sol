// SPDX-License-Identifier: MIT
// This specifies the license under which the contract is released. The MIT license is a permissive license.

pragma solidity ^0.8.24;
// This sets the version of the Solidity compiler to be used. In this case, it is version 0.8.24 or newer.

contract Functions {
    // State variable
    // This is a state variable of type uint (unsigned integer).
    // It is stored on the blockchain and can be accessed publicly.
    uint public myNumber;

    // Constructor
    // The constructor is a special function that runs only once when the contract is deployed.
    // It takes an unsigned integer parameter and initializes the state variable 'myNumber' with this value.
    constructor(uint _myNumber) {
        myNumber = _myNumber;
    }

    // Function to set a new number
    // This function takes an unsigned integer as an argument and updates the state variable 'myNumber' with the new value.
    // The function is marked as 'public', meaning it can be called by anyone.
    function setNumber(uint _myNumber) public {
        myNumber = _myNumber;
    }

    // Function to increment the current number
    // This function increments the state variable 'myNumber' by 1.
    // The function is marked as 'public', meaning it can be called by anyone.
    function incrementNumber() public {
        myNumber += 1;
    }

    // Function to get the current number
    // This is a 'view' function, meaning it does not modify the state of the blockchain.
    // It returns the current value of the state variable 'myNumber'.
    // The function is marked as 'public', meaning it can be called by anyone.
    function getNumber() public view returns (uint) {
        return myNumber;
    }
}
