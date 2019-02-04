pragma solidity ^0.5.2;

contract ERC20 {

    struct Payment {
        uint amount;
        uint timestamp;
    }

    mappping (address => Payment) private _payments;

    function totalSupply() public view returns (uint) {


        return 0;
    }

    function balanceOf(address who) public view returns (uint) {
        
    }
}