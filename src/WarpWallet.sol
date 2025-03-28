// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract WarpWallet {
    address public owner;

    event Deposit(
        uint256 indexed id,
        address sender,
        address recipient,
        string origChainName,
        string destChainName,
        uint256 amount
    );
    event Withdrawal(
        string indexed origChainName,
        address sender,
        address recipient,
        uint256 amount
    );

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function deposit(
        uint256 id,
        address recipient,
        string calldata destChainName
    ) external payable {
        require(msg.value > 0, "Must send ETH");
        require(bytes(destChainName).length > 0, "Chain name cannot be empty");
        emit Deposit(
            id,
            msg.sender,
            recipient,
            "Bali Beans",
            destChainName,
            msg.value
        );
    }

    function withdraw(
        string calldata origChainName,
        address _from,
        address payable _to,
        uint256 _amount
    ) external onlyOwner {
        require(address(this).balance >= _amount, "Insufficient balance");
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "ETH transfer failed");
        emit Withdrawal(origChainName, _from, _to, _amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
