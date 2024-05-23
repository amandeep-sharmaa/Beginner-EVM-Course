// SPDX-License-Identifier: MIT
pragma solidity 0.8.7; //specify the solidity version

contract MyToken {
    
    //public variable
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
        balances[account] =balances[account]- value;    
      }  
    }
}
