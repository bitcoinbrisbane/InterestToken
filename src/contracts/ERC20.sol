pragma solidity ^0.5.2;

contract ERC20 {

    uint256 public _rate; //to 4 decimals

    struct Payment {
        uint amount;
        uint blockNumber;
    }

    mapping (address => Payment[]) private _payments;

    constructor () public {
        _payments[msg.sender].push(Payment(10000, block.number));
        _rate = 1000;
    }

    function totalSupply() public view returns (uint) {
        return 0;
    }

    function balanceOf(address who) public view returns (uint256) {
        Payment[] memory payments = _payments[who];

        uint256 total = 0;

        for (uint i = 0; i < payments.length; i++) {
            uint delta = block.number - payments[i].blockNumber;
            total += delta * _rate;
        }

        return total;
    }

    // function setRate(uint256 rate) public {
    //     _rate = rate;
    // }
}