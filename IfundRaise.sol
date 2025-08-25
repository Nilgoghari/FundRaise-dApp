//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// this interface for Fund Raiser contract
interface IfundRaise {
    ///EVENTS///
    /// this is donation event
    event Donation(address _donor, uint256 _amount);

    ///this is withdraw event
    event Withdraw(address _owner, uint256 _amount);

    ///this is changeowner event
    event ChangeOwner(address _Owner, address _newOwner);


    ///FUNCTIONS///
    ///this function will allow fundraiser contract to donate ande raise the fund
    function donate() external payable ;

    ///this function will allow fundraiser contract to withdraw all the money 
    function withdraw() external payable ;

    ///this function will allow fundraiser contract to change owner address
    function changeOwner(address _newOwner) external;
    
}
