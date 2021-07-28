Mapping is a reference type as arrays and structs. Following is the syntax to declare a mapping type.

`mapping(_KeyType => _ValueType)`

##### **Where**

* **_KeyType** − can be any built-in types plus bytes and string. No reference type or complex objects are allowed.
* **_ValueType** − can be any type.

##### Considerations

* Mapping can only have type of **storage** and are generally used for state variables.
* Mapping can be marked public. Solidity automatically create getter for it.
