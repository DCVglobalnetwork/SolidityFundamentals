// SPDX-License-Identifier: MIT
// This specifies the license under which the contract is released. The MIT license is a permissive license.

pragma solidity ^0.8.24;
// This sets the version of the Solidity compiler to be used. In this case, it is version 0.8.24 or newer.

contract Ownable {
    // State variable
    // This is a state variable of type address.
    // It stores the address of the contract owner and can be accessed publicly.
    address public owner;

    // Constructor
    // The constructor is a special function that runs only once when the contract is deployed.
    // It initializes the state variable 'owner' with the address of the contract deployer.
    constructor() {
        owner = msg.sender; // Set the owner to the address that deploys the contract
    }

    // Modifier
    // This modifier restricts function access to only the contract owner.
    // The 'require' statement checks if the caller of the function (msg.sender) is the owner.
    // If not, it throws an error with the message "Not the owner".
    // The '_' symbol represents the location where the modified function's code will be inserted.
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }
}
