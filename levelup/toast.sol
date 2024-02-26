// SPDX-License-Identifier: AGPL-3.0-or-later

import "./kitchen.sol";

pragma solidity ^0.8.7;

contract Toast {

    uint8 private salt;
    uint8 private tomatoe;
    uint8 private oil;
    string private flag;
    bool public perfecToast;
    kitchen public k;

    event Message(string message);

    constructor(string memory _flag, kitchen _k){
        k = kitchen(_k);
        flag = _flag;
    }

    function getFlag() public view returns(string memory){
        require(perfecToast == true,"No has hecho la tostada perfecta");
        return flag;
    }

    function CheckToast() public {
        if (tomatoe !=1){
            emit Message("El tomate tiene que ser el ingrediente 1");
        }
        if (oil !=2){
            emit Message("El aceite tiene que ser el ingrediente 2");
        }
        if (salt !=3){
            emit Message("La sal tiene que ser el ingrediente 3");
        }
 
        if (tomatoe == 1 && oil == 2 && salt == 3) {
            perfecToast = true;
            emit Message("Perfecto, ya puedes obtener la flag");
        } else {
            tomatoe = 0;
            salt = 0;
            oil = 0;
            emit Message("Mal, vuelve a empezar la tostada!");
        }        
    }

    function execution_function(bytes memory _data) public {
        (bool success, bytes memory returnedData) = address(k).delegatecall(_data);
        require(success,"Delegada no correcta");
    }        
}