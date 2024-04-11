// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract Fun {
  uint public x;

  event XWasChanged(uint _from, uint _to);

  constructor(uint _x) {
    emit XWasChanged(x, _x);
    x = _x;
  }

  function changeX(uint _x) external {
    emit XWasChanged(x, _x);
    x = _x;
  }
}