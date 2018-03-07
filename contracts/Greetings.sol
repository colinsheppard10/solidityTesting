pragma solidity ^0.4.18;

import "./Ownable.sol";
import "./MintableToken.sol";
// import "zeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
// import "zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
// import "zeppelin-solidity/contracts/crowdsale/distribution/RefundableCrowdsale.sol";
// import "zeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
// import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract Greetings is Ownable {
    string message;
    MintableToken token;

    // function Greetings(string _message, MintableToken _token) public {
    //     message = _message;
    //     token = _token;
    // }
    function Greetings(string _message) public {
        token = new MintableToken();
        message = _message;
    }

    function setMessage(string _message) public {
        message = _message;
    } 

    function getMessage() public view returns(string) {
        return message;
    }

    function getToken() public view returns(int) {
        return token.getName();
    }
}