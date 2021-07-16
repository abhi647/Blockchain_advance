pragma solidity ^0.5.17;

contract WorkingWithVariables {
    uint256 public myUint; //integer variable

    function SetMyUint(uint256 _myUint) public {
        myUint = _myUint;
    }

    bool public myBool; // bool vairable

    function SetMyBool(bool _myBool) public {
        myBool = _myBool;
    }

    uint8 public myUint8; //integer increment

    function myUintIncrement() public {
        myUint8++;
    }

    function myUintDecrement() public {
        //integer decrement
        myUint8--;
    }

    address public myAddress; //address variable

    function SetMyAddress(address _address) public {
        myAddress = _address;
    }

    function getBalanceOfAddress() public view returns (uint256) {
        //balance variable
        return myAddress.balance;
    }

    string public myString; //string variable

    function SetMyString(string memory _myString) public {
        myString = _myString;
    }
}
