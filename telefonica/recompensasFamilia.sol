// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract TaskCompensation {
    IERC20 public token;
    address public owner;

    struct Task {
        address taskDoer;
        uint256 reward;
        bool completed;
    }

    mapping(uint256 => Task) public tasks;
    uint256 public nextTaskId;

    // Event to notify when a task is created with a reward
    event TaskCreated(uint256 taskId, address taskDoer, uint256 reward);
    // Event to notify when a task is marked as completed and reward is sent
    event TaskApprovedAndRewardSent(uint256 taskId, address taskDoer, uint256 reward);

    constructor(address _tokenAddress) {
        token = IERC20(_tokenAddress);
        owner = msg.sender;
        nextTaskId = 1;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    // Function to create a task and lock the reward tokens in the contract
    function createTask(address _taskDoer, uint256 _reward) external onlyOwner {
        require(_reward > 0, "Reward must be greater than 0");
        uint256 taskId = nextTaskId++;
        require(token.transfer(address(this), _reward), "Transfer failed");

        tasks[taskId] = Task({
            taskDoer: _taskDoer,
            reward: _reward,
            completed: false
        });

        emit TaskCreated(taskId, _taskDoer, _reward);
    }

    // Function for the owner to approve the task and send the reward to the task doer
    function approveTask(uint256 taskId) external onlyOwner {
        Task storage task = tasks[taskId];
        require(!task.completed, "Task already completed");
        require(task.reward > 0, "Reward must be set");
        
        task.completed = true;
        require(token.transfer(task.taskDoer, task.reward), "Reward transfer failed");
        
        emit TaskApprovedAndRewardSent(taskId, task.taskDoer, task.reward);
        
        // Reset the reward to prevent re-entrancy attacks
        task.reward = 0;
    }
}
