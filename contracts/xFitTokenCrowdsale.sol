pragma solidity ^0.4.15;

import "./xFitToken.sol";

// remix: import "github.com/OpenZeppelin/zeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
// import "zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
 import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
// import "zeppelin-solidity/contracts/crowdsale/distribution/RefundableCrowdsale.sol";
// import "zeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol"; 
// import "zeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol";

contract xFitTokenCrowdsale is Crowdsale {

  function xFitTokenCrowdsale(address _wallet, uint256 _cap, uint256 _openingTime, uint256 _closingTime, uint256 _rate, uint256 _goal) public
  Crowdsale(_rate, _wallet, new xFitToken())
//  CappedCrowdsale(_cap)
//  TimedCrowdsale(_openingTime, _closingTime)
//  RefundableCrowdsale(_goal)
  {
    
  }

  function createXFitTokenContract() public returns (MintableToken) {
    return new xFitToken();
  }
}
