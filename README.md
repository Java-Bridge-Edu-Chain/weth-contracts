## Warp Contract

Open Intent Solver listen Deposit event in this contract and create withdraw transaction in counterpary rollup.

created for Espresso Hackathon.

```
Deployed in Gayo Roll Rollup

Deployer: 0x9EF7a9d46C4F3EC4378D3dD495E827F0D1cb475E
Deployed to: 0x6588505db402B5BCD66547Cd1A4c982483F2AC64
Transaction hash: 0xc34cb4d550113e9959fc04055a83da9ee69f281dda699cf7d1342996cceaa0d1

```

```
Deployed in Bali Beans Rollup

Deployer: 0x9EF7a9d46C4F3EC4378D3dD495E827F0D1cb475E
Deployed to: 0xF1bb1f631636Be2A78BC144f2981995AEaD7BBAC
Transaction hash: 0x3eef1866aedf75e3163c6be0b47c99d4267c4f830c8a662d4f014b5170f78623

```

## Example

How to bridge from `gayo roll` -> `bali beans`

```
cast send 0x6588505db402B5BCD66547Cd1A4c982483F2AC64 "deposit(uint256,address,string)" 123 0x53D5569491ECE5c5B5e7235160619bc2F1d3Ea62 "balibeans" --value 100000000000000000 --rpc-url https://rpc-gayo-roll.javabridge.fun/ --private-key <PRIVATE KEY>
```
