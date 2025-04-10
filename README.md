## Weth Contract

Open Intent Solver listen Deposit event / Burn event and create withdraw / mint transaction in counterpary chain.

created for Educhain Hackathon.

```
Deployed in Educhain Sepolia

Deployer: 0x9EF7a9d46C4F3EC4378D3dD495E827F0D1cb475E
Deployed to: 0xa49967A85c77C406b68b7A0F1B27D330131B011B
Transaction hash: 0xd6e520386f6fd0a641c5414e0db4c5bb3bc8378995708edd4fa55f85509fc3b8

https://edu-chain-testnet.blockscout.com/address/0xa49967A85c77C406b68b7A0F1B27D330131B011B?tab=index

```

## Example

How to bridge from `gayo roll` -> `educhain sepolia`

```
cast send 0x6588505db402B5BCD66547Cd1A4c982483F2AC64 "deposit(uint256,address,string)" 123 0x53D5569491ECE5c5B5e7235160619bc2F1d3Ea62 "educhain" --value 100000000000000000 --rpc-url https://rpc-gayo-roll.javabridge.fun/ --private-key <PRIVATE KEY>
```
