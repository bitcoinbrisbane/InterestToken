pragma solidity ^0.5.2;

contract ERC20 {

    struct Payment {
        uint amount;
        uint timestamp;
    }

    mapping (address => Payment[]) private _payments;

    constructor () public {
        _payments[msg.sender].push(Payment(10000, now));
    }

    function totalSupply() public view returns (uint) {


        return 0;
    }

    function balanceOf(address who) public view returns (uint) {
        Payment[] memory payments = _payments[who];
        return payments.length;
    }
}