// SPDX-License-Identifier: MIT
// This specifies the license under which the contract is released. The MIT license is a permissive license.

pragma solidity ^0.8.24;
// This sets the version of the Solidity compiler to be used. In this case, it is version 0.8.24 or newer.

contract Arrays {
    // State variable
    // This is a state variable of type 'uint[]' (an array of unsigned integers).
    // It is used to store a list of numbers and can be accessed publicly.
    uint[] public numbers;

    // Function to add a number to the array
    // This function takes an unsigned integer '_number' as an argument and adds it to the 'numbers' array.
    // The function is marked as 'public', meaning it can be called by anyone.
    function addNumber(uint _number) public {
        // Append the given number to the end of the 'numbers' array
        numbers.push(_number);
    }

    // Function to get a number at a specific index
    // This function takes an unsigned integer '_index' as an argument, which specifies the position in the 'numbers' array.
    // It returns the number at that index.
    // The function is marked as 'public' and 'view', meaning it does not modify the state and can be called by anyone.
    // A 'require' statement ensures that the index is within bounds to prevent accessing out-of-range elements.
    function getNumber(uint _index) public view returns (uint) {
        // Check if the index is within the bounds of the array
        require(_index < numbers.length, "Index out of bounds");
        // Return the number at the specified index
        return numbers[_index];
    }

    // Function to get all numbers in the array
    // This function returns the entire 'numbers' array.
    // It is marked as 'public' and 'view', meaning it does not modify the state and can be called by anyone.
    function getAllNumbers() public view returns (uint[] memory) {
        // Return the 'numbers' array
        return numbers;
    }
}
