# Payable functions

* A function can't recieve **Ether**
  * Unless marked "payable"
  * `address payable (myAddress) `
  * `function myFunction() public payable{...}`
* If a function/address is not marked payable and recieve Ethers, It will fail
