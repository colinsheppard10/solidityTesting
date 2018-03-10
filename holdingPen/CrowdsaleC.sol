pragma solidity ^0.4.17;

contract CrowdsaleC {
    uint256 rate;
    
    function CrowdsaleC(uint256 _rate) public{
        rate = _rate;
    }
    
    // external interface -do not edit
    function buyTokens(uint256 _beneficiary)public {
       _preValidatePurchase(_beneficiary);
   }
   
   function _preValidatePurchase(uint256 _beneficiary)public {
       require(_beneficiary != 0);
   }
 
}

