---
title: Learning Blockchain
thumbnail: ""
url: "learning-blockchain"
...

# Learning Blockchain

## Frontend Architecture

- client-side: **wallet** <-> **frontend**
- blockchain: **ethereum node** <-> **smart contract**
- **client-side** <-> javascript, web3 <-> **blockchain**

## Installation

- Install Truffle

`npm install -g truffle`

- Install Ganache

`npm install -g ganache-cli`

## Commands

- To run the frontend go to `frontend` folder and run

` truffle develop`
this will open a prompt in the terminal. To run the migration run
` migrate --reset` here `--reset` will ignore previous migrations

- `truffle migrate`

  - this does 2 things
    1. compile the files
    1. delopy the smart contracts to blockchain.

- To run the tests, go to the `tests` folder and run

` truffle test`

## Sample Code Explanation

```solidity
pragma solidity ^0.5.0;

contract HelloWorld {
    function hello()
    pure // doesn't modify the blockchain
    public // executable from outside the smart contract
    returns // specify what it returns
    (string memory) // return type is string which stores in memory ie. temporary value
    {
        return "hello world";
    }
}
```

## TERMS

- abi - application binary interface
