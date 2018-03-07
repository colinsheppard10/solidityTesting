pragma solidity ^0.4.18;

import "./MyImport.sol";
import "./MyDataType.sol";
// import "zeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
// import "zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
// import "zeppelin-solidity/contracts/crowdsale/distribution/RefundableCrowdsale.sol";
// import "zeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
// import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract Greetings is MyImport {
    string message;
    MyDataType myDT;

    function Greetings(string _message) public 
        MyImport(_message, new MyDataType())
    {
        message = _message;
    }

    function getMessage() public view returns(string) {
        return message;
    }

    function getName() public view returns(string) {
        return name;
    }

    function getMyDataType() internal returns (MyDataType) {
        return new MyDataType();
    }
}