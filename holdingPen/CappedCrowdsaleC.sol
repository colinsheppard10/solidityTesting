pragma solidity ^0.4.17;

import "./CrowdsaleC.sol";

contract CappedCrowdsaleC is CrowdsaleC {
    uint256 cap;
    
    function CappedCrowdsaleC(uint256 _cap)public {
        cap = _cap;
    }
   
   function _preValidatePurchase(uint256 _beneficiary) public{
        super._preValidatePurchase(_beneficiary);
        require(_beneficiary <= cap);
   }
}