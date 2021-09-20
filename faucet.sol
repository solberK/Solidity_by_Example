//"SPDX-License-Identifier: UNLICENSED"
pragma solidity ^0.7.0;


contract Faucet {
    address payable owner;
    
    constructor () {
        owner = msg.sender;
    }
    
    function destroy() public {
        require(msg.sender == owner);
        selfdestruct(owner);
    }
    
    function withdraw(uint withdraw_amount) public {
        require(withdraw_amount <= 0.1 ether);
        
        msg.sender.transfer(withdraw_amount);
    }
    
    receive () external payable{}
}
