pragma solidity ^0.5.0;

contract TodoList {
    uint256 public taskCount = 0; // this is a state variable, being written to storage

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    mapping(uint256 => Task) public tasks; // this is an associative array like maps in C++ [(key:"value"), (key:"value")]

    constructor() public {
        createtask("Complete REST API homework");
    }

    function createtask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
