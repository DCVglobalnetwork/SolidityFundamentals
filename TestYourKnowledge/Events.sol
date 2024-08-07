// SPDX-License-Identifier: MIT
// This specifies the license under which the contract is released. The MIT license is a permissive license.

pragma solidity ^0.8.24;
// This sets the version of the Solidity compiler to be used. In this case, it is version 0.8.24 or newer.

contract Events {
    // State variable
    // This is a state variable of type uint (unsigned integer).
    // It is stored on the blockchain and can be accessed publicly.
    // Event
    // This defines an event called 'NumberUpdated'.
    // Events are used to log important actions that occur in the contract.
    // This event logs the old number and the new number whenever the state variable 'myNumber' is updated.
    // Constructor
    // The constructor is a special function that runs only once when the contract is deployed.
    // It initializes the state variable 'myNumber' with the value provided as a parameter.
    // Initialize 'myNumber' with the provided value
    // Function to set a new number
    // This function takes an unsigned integer as an argument and updates the state variable 'myNumber' with the new value.
    // Before updating 'myNumber', it emits the 'NumberUpdated' event to log the change.
    // Emit the NumberUpdated event with the old and new values
    // Update the state variable 'myNumber' with the new value
}
