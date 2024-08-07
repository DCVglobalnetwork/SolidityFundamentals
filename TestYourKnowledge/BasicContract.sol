// SPDX-License-Identifier: MIT
// This specifies the license under which the contract is released. The MIT license is a permissive license.

pragma solidity ^0.8.24;
// This sets the version of the Solidity compiler to be used. In this case, it is version 0.8.24 or newer.

contract BasicContract {
    // State variable
    // This is a state variable of type uint (unsigned integer).
    // It is stored on the blockchain and can be accessed publicly.
    // Constructor
    // The constructor is a special function that runs only once when the contract is deployed.
    // It takes an unsigned integer parameter and sets the initial value of the state variable 'myNumber'.
    // Function to set a new number
    // This function takes an unsigned integer as an argument and updates the state variable 'myNumber' with the new value.
    // The function is marked as 'public', meaning it can be called by anyone.
    // Function to get the current number
    // This is a 'view' function, meaning it does not modify the state of the blockchain.
    // It returns the current value of the state variable 'myNumber'.
    // The function is marked as 'public', meaning it can be called by anyone.
}
