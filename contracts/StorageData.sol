// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0;

contract StorageData {
    event HashSaved(bytes);
    constructor() {
    }
    function store(bytes memory message) public {
        emit HashSaved(message);
    }
}
