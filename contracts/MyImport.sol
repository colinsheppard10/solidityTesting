pragma solidity ^0.4.17;

import "./MyDataType.sol";

contract MyImport { 
    string name;
    MyDataType myDT;

    function MyImport(string _name, MyDataType _myDT) public {
        name = _name;
        myDT = _myDT;
    }

    function testOwnable() public pure returns(string) {
        return "from testOwnable";
    }
}

