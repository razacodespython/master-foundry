# Lecture 1: Getting Started with Foundry 🚀

Video:\
Full Article: https://www.razacodes.com/blog/foundry-intro \
Example Contract Address: 0x998608B4f83249c4217ADb9060Fb739d4A52C6A2 \
Verified Contract Link: https://sepolia.scrollscan.dev/address/0x998608B4f83249c4217ADb9060Fb739d4A52C6A2


### Key Topics:

1. **Installation** 🔧
   - Instructions on setting up Foundry and configuring the environment.

2. **Creating a Project** 📁
   - Guidelines on initiating and organizing a new Foundry project.

3. **Compiling Contracts** 📝
   - Tips for writing and compiling smart contracts in Foundry.

4. **Local Testnet Anvil** 🌐
   - Introduction to Anvil for local Ethereum testing and contract deployment.

5. **Deploying with Scripts** 📜
   - How to use Foundry scripts for smart contract deployment.

6. **.env File Usage** 🔐
   - Best practices for handling private keys and network details securely.

7. **Deploying to Scroll Network** 🌍
   - Steps for deploying contracts on the Scroll network.

8. **Contract Verification** 🔍
   - Techniques to verify contracts on blockchain explorers.

9. **Interacting with Contracts** 🤝
   - Strategies for engaging with smart contracts using Foundry tools.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
