pragma solidity ^0.7.0;

contract OreOrecoin {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    
    event Transfer(address indexed from, address indexed to, uint256 value);
    
    constructor(uint256 _supply, string memory _name, string memory _symbol, uint8 _decimals){
        balanceOf[msg.sender] = _supply;
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _supply;
    }
    
    //送金
    function trasfer(address _to, uint256 _value) public{
        //check 
        require(balanceOf[msg.sender] > _value, "Balance is not enough");
        require(balanceOf[_to] + _value > balanceOf[_to], "This is overflow error");
        
        balanceOf[_to] = balanceOf[_to] + _value;
        balanceOf[msg.sender] = balanceOf[msg.sender] - _value;
        
        //イベント通知
        emit Transfer(msg.sender, _to, _value);
    }
    
}
