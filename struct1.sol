// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract studentDetails{
    struct student {
        string name;
    uint8 age;
    }

    mapping (uint8 => student) students;

    function setStudentDetails (uint8 _key, string memory _name, uint8 _age) public{
        students[_key].name = _name;
        students[_key].age = _age;
    }

    function getStudentDetails (uint8 _key) public view returns (string memory, uint8) {
        return (students[_key].name, students[_key].age);
    }
}