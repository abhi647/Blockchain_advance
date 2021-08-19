
// SPDX-License-Identifier: GPL-3.0
// ref: https://ethereum-blockchain-developer.com/025-simple-mappings/00-overview/
pragma solidity ^ 0.8.4;

contract simpleMapping {
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddressMapping;
    
    function setValue (uint _index) public {
        myMapping[_index]=true;
    }
    function setMyAddresstoTrue () public{
        myAddressMapping[msg.sender]= true;
    }
}
// ref: https://ethereum-blockchain-developer.com/025-simple-mappings/03-address-bool-mapping/