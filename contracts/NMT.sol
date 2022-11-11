// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract NMT is ERC20 {
  uint public INITIAL_SUPPLY = 1000;

  constructor() ERC20("Non movable token", "NMT") {
    _mint(msg.sender, INITIAL_SUPPLY);
  }
  function decimals() public view virtual override returns (uint8) {
    return 18;
  }
}
