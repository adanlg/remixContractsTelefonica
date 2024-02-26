pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/VRFConsumerBase.sol";

contract MyVRFConsumer is VRFConsumerBase {
    bytes32 internal keyHash;
    uint256 internal fee;
    uint256 public randomResult;
    uint256 public divided7;

    constructor() 
        VRFConsumerBase(
            0x8103B0A8A00be2DDC778e6e7eaa21791Cd364625, // VRF Coordinator
            0x779877A7B0D9E8603169DdbD7836e478b4624789 // LINK Token
        )
    {
        keyHash = 0x474e34a077df58807dbe9c96d3c009b23b3c6d0cce433e59bbf5b34f823bc56c;
        fee = 0.1 * 10 ** 18; // 0.1 LINK (Varies by network)
    }

    // Requests randomness
    function getRandomNumber() public returns (bytes32 requestId) {
        require(LINK.balanceOf(address(this)) >= fee, "Not enough LINK - fill contract with faucet");
        return requestRandomness(keyHash, fee);
    }

    // Callback function used by VRF Coordinator
    function fulfillRandomness(bytes32 requestId, uint256 randomness) internal override {
        randomResult = randomness;
        divided7 = randomResult/ 7;
        if (divided7 == 0 ) {

        } else if (divided7 == 1) {
            
        }
    }
}
