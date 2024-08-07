// SPDX-License-Identifier: MIT
// This specifies the license under which the contract is released. The MIT license is a permissive license.

pragma solidity ^0.8.24;
// This sets the version of the Solidity compiler to be used. In this case, it is version 0.8.24 or newer.

// Base contract that provides ownership functionality
contract Ownable {
    // State variable
    // This is a state variable of type address.
    // It stores the address of the contract owner and can be accessed publicly.
    // Constructor
    // The constructor is a special function that runs only once when the contract is deployed.
    // It initializes the state variable 'owner' with the address of the contract deployer.
    // Set the owner to the address that deploys the contract
    // Modifier
    // This modifier restricts function access to only the contract owner.
    // The 'require' statement checks if the caller of the function (msg.sender) is the owner.
    // If not, it throws an error with the message "Not the owner".
    // The '_' symbol represents the location where the modified function's code will be inserted.
}

// Derived contract that inherits ownership functionality
contract MyContract is Ownable {
    // State variable
    // This is a state variable of type uint (unsigned integer).
    // It is stored on the blockchain and can be accessed publicly.
    // Function to set a new number
    // This function takes an unsigned integer '_myNumber' as an argument and updates the state variable 'myNumber'.
    // It is protected by the 'onlyOwner' modifier, meaning only the contract owner can call this function.
    // Update 'myNumber' with the new value
}
