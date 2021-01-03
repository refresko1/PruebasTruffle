pragma solidity ^0.6.12;

// imports

//contrato
/*
 *   Contrato para almacenar los balances
 */

contract MyCoin {
    //Variable
    mapping(address => uint256) balances;

    // constructor
    constructor() public {
        balances[msg.sender] = 1000;
    }

    //metodos
    function send(address recibidor, uint256 cantidad) public {
        if (balances[msg.sender] > cantidad) {
            balances[msg.sender] -= cantidad;
            balances[recibidor] += cantidad;
        } else {
            revert();
        }
    }

    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}
