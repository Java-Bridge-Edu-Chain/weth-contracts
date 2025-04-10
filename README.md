## Weth Contract

Open Intent Solver listen Deposit event / Burn event and create withdraw / mint transaction in counterpary chain.

created for Educhain Hackathon.

```
Deployed in Educhain Sepolia

Deployer: 0x9EF7a9d46C4F3EC4378D3dD495E827F0D1cb475E
Deployed to: 0x95740ea41b012F2F5194D7978DDB6CC6bab777E6
Transaction hash: 0x889ead94608b36af615745bfcbd1fcd9d0830023cf8040188e01950550c66d9a

https://edu-chain-testnet.blockscout.com/address/0x95740ea41b012F2F5194D7978DDB6CC6bab777E6

```

## Example

How to bridge from `gayo roll` -> `educhain sepolia`

```
cast send 0x6588505db402B5BCD66547Cd1A4c982483F2AC64 "deposit(uint256,address,string)" 123 0x53D5569491ECE5c5B5e7235160619bc2F1d3Ea62 "educhain" --value 100000000000000000 --rpc-url https://rpc-gayo-roll.javabridge.fun/ --private-key <PRIVATE KEY>
```
