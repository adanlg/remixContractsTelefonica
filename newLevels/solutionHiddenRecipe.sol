pragma solidity ^0.8.0;

interface IExampleContract {
    function hide() external;
}

contract CallerContract {
    IExampleContract exampleContract;

    constructor(address _exampleContractAddress) {
        exampleContract = IExampleContract(_exampleContractAddress);

        exampleContract.hide();
    }
}
