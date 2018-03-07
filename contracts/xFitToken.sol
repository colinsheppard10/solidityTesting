pragma solidity ^0.4.15;

import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract xFitToken is MintableToken {
  string public name = 'xFitToken';
  string public symbol = 'XFT';
  uint8 public decimals = 0;
}
