
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract SendMoney {
    uint public balanceRecieved;
    //uint public balanceReceived: is a public storage variable. A public variable will create a getter function automatically in Solidity. So we can always query the current content of this variable.
    uint public lockeduntil;
    
    
    function recieveMoney() public payable {
        balanceRecieved += msg.value;
    //balanceReceived += msg.value: The msg-object is a global always-existing object containing a few informations about the ongoing transaction.
        lockeduntil = block.timestamp +1 minutes;
    }
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    //function getBalance() public view returns(uint): a view function is a function that doesn't alter the storage (read-only) and can return information. 
    //address(this).balance: A variable of the type address always has a property called .balance which gives you the amount of ether stored on that address.
    }
    // Withdraw all ether 
    function withdrawMoney() public {
        if (lockeduntil < block.timestamp) {
        address payable to = payable(msg.sender);
        to.transfer(getBalance());
        }
    }
    
    // Withdraw all ether to a specifica address
    function withdrawMoneyto (address payable _to) public {
        if (lockeduntil < block.timestamp) {
        _to.transfer(getBalance());
        }
            
    }
    
    
    // Withdrawl Locking
    // What we need is to store the block.timestamp somewhere. 
    // There are several methods to go about this, I prefer to let the user know how long is it locked. 
}
