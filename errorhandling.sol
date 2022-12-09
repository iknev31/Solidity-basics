//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.12;
contract errorHandlingSample{
    uint balance =100;
    event balDisplay(uint balance);
    function deductbal(uint _amount) public returns(uint){
        if (_amount < 2) {
            revert ("Input amount is not valid");
        }
        balance = balance - _amount;
        return balance;
    }
    function deductBalance(uint _amount) public returns(uint){
        require(_amount >1, "Input amount is not valid");
        balance = balance - _amount;
        emit balDisplay(balance);
        return balance;
    }
    function deductbal2(uint _amount) public returns (uint){
        assert(_amount > 1);
        balance = balance - _amount;
        return balance;
    }
}