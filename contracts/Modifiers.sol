// SPDX-License-Identifier: MIT
// This specifies the license under which the contract is released. The MIT license is a permissive license.

pragma solidity ^0.8.24;
// This sets the version of the Solidity compiler to be used. In this case, it is version 0.8.24 or newer.

contract Modifiers {
    // State variable
    // This is a state variable of type address.
    // It stores the address of the contract owner and can be accessed publicly.
    address public owner;

    // State variable
    // This is a state variable of type uint (unsigned integer).
    // It is stored on the blockchain and can be accessed publicly.
    uint public myNumber;

    // Constructor
    // The constructor is a special function that runs only once when the contract is deployed.
    // It initializes the state variables 'owner' with the address of the contract deployer
    // and 'myNumber' with the provided value.
    constructor(uint _myNumber) {
        owner = msg.sender; // Set the owner to the address that deploys the contract
        myNumber = _myNumber; // Initialize 'myNumber' with the provided value
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

    // Function to set a new number
    // This function allows updating the state variable 'myNumber' with a new value.
    // It is protected by the 'onlyOwner' modifier, meaning only the contract owner can call this function.
    function setNumber(uint _myNumber) public onlyOwner {
        myNumber = _myNumber;
    }
}
