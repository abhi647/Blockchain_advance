# Variables

- All variables are initialised by default

  - There is no "null" or "undefined"
  - (U)Int = 0
  - Bool = false
  - String = ""
- Public variables generate a getter with the name of the variable

  - You can't create a function with the same name as the variable itself
- reference types need a memory location (memory/storage)
- **e.g.**

  ```
  string public myString; //string variable
      function SetMyString (string memory _myString) public {
           myString = _myString;
  ```

# Boolean

- Two values (True/False)
- "bool myVar"
- can negate: "myVar = !myVar"
- Boolean "or" and "and": || or &&
  - if (myvar && myOtherVar) {...}

# Unsigned -Integers

- Unit8 to Uint256 in 8bit increment
- Uint8 from 0-255
- Int8 from -128 to +127
- 2^8 => 2**8
- Uint256 => 2^256
- unit is an alias for uint256
- Automatic Warp Around
  - Uint8 my myUint
  - myUint -- => 256

# Address

- Every interaction on ethereum is address bases
- Hold 20 byte of value
- User to transfer ether from smart contracts to the address of form address to smart contract
- Address and address payable
- have a member ,,balance" which has the balance in Wei

# String and Bytes

- Both are special arrays
- String is equal to byte byt doesn't have a length or index-access
- Bytes for arbitrary length raw data
- String for arbitrary lenght string (UTF-8) data
- Strings are EXPENSIVE to STORE on ETHEREUM BLOCKCHAIN
