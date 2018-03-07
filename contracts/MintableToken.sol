pragma solidity ^0.4.17;

contract  MintableToken {
  int public name = 11;

  function getName() public view returns(int) {
      return name;
  }
}