// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

// Structs
contract Enums1 {
    enum Status {
        Todo,
        InProgress,
        Done
    }

    // Defaults to first item, e.g., "Todo"
    Status public status;

    // Todo: 0
    // InProgress: 1
    // Done: 2
    function get() public view returns (Status) {
        return status;
    }

    // Set status manually
    function set(Status _status) public {
        status = _status;
    }

    // Mark as done
    function complete() public {
        status = Status.Done;
    }

    // Resets to default value, i.e., Todo or 0
    function reset() public {
        delete status;
    }
}
