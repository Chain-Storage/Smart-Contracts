//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract BuyStorage {
  struct UserRole {
    address userAddress;
    string role;
    string date;
  }

  UserRole[] public userRoles;

  function currentRole() public view returns (UserRole[] memory) {
    return userRoles;
  }

  function buyGold(string memory _Date) public payable {
    require(msg.value == 3000000000000000 wei);

    UserRole memory userRole;

    userRole.userAddress = msg.sender;
    userRole.role = "gold";
    userRole.date = _Date;

    userRoles.push(userRole);
  }

  function buyPreminum(string memory _Date) public payable {
    require(msg.value == 5000000000000000 wei);

    UserRole memory userRole;

    userRole.userAddress = msg.sender;
    userRole.role = "preminum";
    userRole.date = _Date;

    userRoles.push(userRole);
  }

  function SendMony(address payable _to) external {
    _to.transfer(address(this).balance);
  }
}
