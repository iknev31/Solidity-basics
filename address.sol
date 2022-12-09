//SPDX-License-Identifier: GPL-3.0
pragma solidity ^ 0.6.12;
contract moneySample{
    //address owner=0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    address owner=0x42527ecC98e6EC22Eea37f01F8Ac580644f796e7;
    function getMoney() public payable {}
    //fallback() external payable{}
    function checkContractBalance() public view returns(uint){
        return address(this).balance;
    }
   function transferToAddress() public {
       payable(owner).transfer(address(this).balance);
   }
    function checkAddressBalance() public view returns(uint){
        return owner.balance;
    }
}