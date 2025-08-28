---

## 📜 contracts/CryptonoutController.sol
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CryptonoutController is Ownable {
    address public liquidityBot;
    address public arbitrageBot;
    address public vaultBot;
    address public rewardsVault;

    constructor(
        address _liquidityBot,
        address _arbitrageBot,
        address _vaultBot,
        address _rewardsVault
    ) Ownable(msg.sender) {
        liquidityBot = _liquidityBot;
        arbitrageBot = _arbitrageBot;
        vaultBot = _vaultBot;
        rewardsVault = _rewardsVault;
    }

    modifier onlyAuthorized() {
        require(
            msg.sender == liquidityBot ||
            msg.sender == arbitrageBot ||
            msg.sender == vaultBot,
            "Not authorized"
        );
        _;
    }

    function distributeProfits(address token) external onlyAuthorized {
        IERC20 erc20 = IERC20(token);
        uint256 balance = erc20.balanceOf(address(this));
        require(balance > 0, "No balance to distribute");

        uint256 treasuryShare = (balance * 30) / 100;
        uint256 reinvestShare = (balance * 30) / 100;
        uint256 rewardsShare = balance - treasuryShare - reinvestShare;

        erc20.transfer(owner(), treasuryShare);
        erc20.transfer(rewardsVault, rewardsShare);
        // 30% stays in contract = auto reinvest
    }
}
