pragma solidity ^0.4.18;

import "./GreetingsParent.sol";
import "./MyDataType.sol";

contract xFitTokenCrowdsaleC is CrowdsaleC {
    string message;

    function xFitTokenCrowdsaleC(string _message) public 
        CrowdsaleC(_message, new MyDataType())
        CappedCrowdsaleC(_message)
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