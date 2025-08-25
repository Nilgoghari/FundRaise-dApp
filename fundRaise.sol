// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {IfundRaise} from "./IfundRaise.sol";


/// This is a simple fund raiser contract
/// only owner can withdraw this donation amount
contract fundRaise is IfundRaise{
    address public owner;
    mapping(address => uint256) public balances;
 

///@dev constructor of this smart contract 
 constructor() {
        owner = msg.sender;
        
 }
 
modifier onlyOwner () {

require(msg.sender == owner,"fundRaise:only owner can do that" );
_;
 
}

///this function is for donation
function donate()  external payable {
require (msg.value >0, "Donation cannot be zero");
balances [msg.sender] += msg.value ;
emit Donation(msg.sender, msg.value);
}
/// this function is to withdraw  the contract fund to owner's address
function withdraw () external payable onlyOwner{
    uint256 TotalBalance = address(this).balance ;
    require (TotalBalance>0, "Withdrawal amount does not match contract fund balance" ); 
    (bool success,)= owner.call{value: TotalBalance}(" ") ;
    require(success, "fundRaise: withdraw failed" );
    emit Withdraw(msg.sender, TotalBalance);
}   

   function changeOwner(address _newOwner) external onlyOwner {
    require(_newOwner != address(0), "fundRaise: Invalid owner address");
    owner = _newOwner;
    emit ChangeOwner(owner, _newOwner);
   }

receive() external payable { }


}
