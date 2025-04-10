// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract WrappedETH is ERC20, ERC20Burnable, Ownable {
    event Deposit(
        uint256 indexed id,
        address sender,
        address recipient,
        string origChainName,
        string destChainName,
        uint256 amount
    );
    constructor(
        address initialOwner
    ) ERC20("Wrapped ETH", "WETH") Ownable(initialOwner) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(
        uint256 id,
        address recipient,
        string calldata destChainName,
        uint256 amount
    ) public {
        _burn(_msgSender(), amount);

        emit Deposit(
            id,
            _msgSender(),
            recipient,
            "Educhain",
            destChainName,
            amount
        );
    }
}
