// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

//import "solmate/tokens/ERC20.sol";
//import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol"; //_mint, _burn

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol"; //safeTransfer, safeTransferFrom, safeApprove, safeIncreaseAllowance, safeDecreaseAllowance

import "forge-std/console.sol";

contract ERC20Token is Ownable, ERC20, ERC20Burnable {
    constructor(string memory name, string memory symbol) Ownable(msg.sender) ERC20(name, symbol) {
        _mint(msg.sender, 9000000000 * 10 ** uint256(decimals()));
    }

    function mintToGuest() public {
        _mint(msg.sender, 100 * 10 ** uint256(decimals()));
    }

    function mint(address user, uint256 amount) public onlyOwner returns (bool) {
        _mint(user, amount);
        return true;
    }

    function getData(address target) public view returns (string memory, uint8, uint256) {
        return (symbol(), decimals(), balanceOf(target));
    }
}

//USDT, USDC use 6 dp !!! But DAI uses 18!!
contract USDX is ERC20Token {
    constructor(string memory name, string memory symbol) ERC20Token(name, symbol) {}

    function decimals() public pure override returns (uint8) {
        return 6;
    }
}
