# MyToken
MyToken is a Solidity Program , It is a simple implemenation of Solidity that allows users to mint new tokens and burn existing tokens , It also has feature to track the balance for each address.


## Description

This Project is  a Smart contract written in Solidity that have Two Public functions  "mint" and "burn". mint function is responsible for adding new token in the supply and updating the balance while burn function is responsible for decreasing the total supply and updating the balance of the given address . Also,there are public variable in this smart contract which can store the token name, it,s abbreviation and its total supply.

## Getting Started

### Installing

* Clone this repository or download the Solidity file or copy the code.
* Make sure you have an IDE for Solidity like Remix (https://remix.ethereum.org/).

### Executing program

* First, go to the Remix Site (https://remix.ethereum.org/).
* Now Copy the Code below in the IDE and Save the file with .sol (eg. MyToken.sol) extension.
  
```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.7; //specify the solidity version
contract MyToken {
    string public token_name="AmanDeep";
    string public token_abbr="AD";
    uint public total_supply=0;      

    //Mapping of Address to balance
    mapping(address => uint) public balances;  
    
    //function to increase the total supply and update 
    //the balance of "sender" address
    function mint(address account, uint value) public {
        total_supply = total_supply + value;          
        balances[account] = balances[account] + value;   
    }

    //burn function takes the address and value and then
    //deduct the value from "sender" address
    function burn(address account, uint value) public {
      if(balances[account] >= value){
        total_supply = total_supply- value;          
        balances[account] = balances[account]- value;    
      }  
    }
}
```
* #### Compile the Contract:
    Open the “Solidity Compiler” tab in the left-hand sidebar, ensure that the “Compiler” option is set to version “0.8.7” (or Auto Compile is enabled , it will 
    automatically select the suitable version) and then click on the “Compile MyToken.sol” button.
* #### Deploy the Contract:
    Navigate to the “Deploy & Run Transactions” tab in the left-hand sidebar, from the dropdown menu, select the “MyToken” contract and then click on the “Deploy” button.
* #### Interact with the contract
    Once the contract is deployed , you can interact by calling the mint and burn function.


## Authors

Amandeep Sharma

inspireamandeep1@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
