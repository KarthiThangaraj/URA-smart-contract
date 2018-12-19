pragma solidity ^0.4.0;

contract URA{
    address owner;
    address receiver;
    uint256 amount ;
    
    function URA(){ }
    
    function set(address _receiver) public payable{
        
        owner = msg.sender;
        receiver = _receiver;
        amount = msg.value;
        
        if(owner.balance < amount){
            revert();
        }else{
            receiver.transfer(msg.value);
        }
    }
    
}
