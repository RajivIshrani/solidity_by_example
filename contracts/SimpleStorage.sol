// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract SimpleStorage {
    string public text;

    function set(string memory _text) public {
        text = _text;
    }
}
