//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract Token {

    // public variables here
  string public tokenName = "21BCS3352";
  string public tokenSymbol = "Kashish";
  uint public totalSupply = 10000;

     // mapping variable here
     mapping(address => uint) public balances;

     // mint function
      function mintTokens(address _address, uint _amount) public {
     totalSupply += _amount;
  balances[_address] += _amount;
 }

  // burn function
  function burnTokens(address _address, uint _amount) public {
  require(balances[_address] >= _amount, "Cannot burn more than balance tokens");
  totalSupply -= _amount;
 balances[_address] -= _amount;
   }
 }
