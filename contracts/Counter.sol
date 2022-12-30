// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Counter {
    uint256 public Count; //default value of Count will be 0.

    // incr() function will increment count by 1.
    function incr() external {
        ++Count;
        // Count += 1;
    }

    // decr() function will decrement count by 2.
    function decr() external {
        --Count;
        // Count -= 1;
    }
}
