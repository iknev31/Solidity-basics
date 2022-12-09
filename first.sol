// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
contract arraysample{
    //array --> fixed and dynamic 
    //fixed length array 
    //age[0]=38, age[1]=40, age[2]=35
    uint8[42] age;
    function setData(uint8 _index, uint8 _value) public {
        age[_index]= _value;
    }
    function readData(uint8 _index) public view returns(uint8){
        return age[_index];
    }
}