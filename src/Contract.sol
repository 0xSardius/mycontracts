// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract HelloWorld {
   string public message;

    constructor() {
        message = "gm";
    }

   function setMessage(string memory _message) public {
      message = _message;
   }

   function getMessage() public view returns (string memory) {
      return message;
   }
    
}
