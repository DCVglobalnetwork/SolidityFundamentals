// SPDX-License-Identifier: MIT
// This specifies the license under which the contract is released. The MIT license is a permissive license.

pragma solidity ^0.8.24;
// This sets the version of the Solidity compiler to be used. In this case, it is version 0.8.24 or newer.

contract Structs {
    // Define a struct called 'User'
    // A struct is a custom data type that groups multiple variables of different types.
    // The 'User' struct has two properties: an unsigned integer 'id' and a string 'name'.
    struct User {
        uint id;
        string name;
    }

    // State variable
    // This is a state variable of type 'User[]' (an array of 'User' structs).
    // It is used to store a list of 'User' structs and can be accessed publicly.
    User[] public users;

    // Function to create a new user
    // This function takes two parameters: an unsigned integer '_id' and a string '_name'.
    // It creates a new 'User' struct with these values and adds it to the 'users' array.
    // The function is marked as 'public', meaning it can be called by anyone.
    function createUser(uint _id, string memory _name) public {
        // Push a new 'User' struct into the 'users' array
        users.push(User(_id, _name));
    }

    // Function to get a user by index
    // This function takes an unsigned integer '_index' which specifies the position of the user in the 'users' array.
    // It returns the 'User' struct at the given index.
    // The function is marked as 'public' and 'view', meaning it does not modify the state and can be called by anyone.
    function getUser(uint _index) public view returns (User memory) {
        // Return the 'User' struct at the specified index in the 'users' array
        return users[_index];
    }
}
