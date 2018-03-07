pragma solidity ^0.4.15;

import "./xFitToken.sol";

import "zeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/distribution/RefundableCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol"; 
// import "zeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol";

contract xFitTokenCrowdsale is Crowdsale, CappedCrowdsale {

  function xFitTokenCrowdsale(uint256 _openingTime, uint256 _closingTime, uint256 _rate, uint256 _cap, uint256 _goal, address _wallet) public
  Crowdsale(_rate, _wallet, new xFitToken())
  CappedCrowdsale(_cap)
//  TimedCrowdsale(_openingTime, _closingTime)
//   RefundableCrowdsale(_goal)
  {
    require(_goal <= _cap);
  }

  function createXFitTokenContract() public payable returns (MintableToken) {
    return new xFitToken();
  }
}
