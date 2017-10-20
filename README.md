# Proof of Existence Demo


# Coding Challenge - Due Date, Thursday October 26 2017 - Smart contract + AI

This weeks challenge is to create an app that uses both Ethereum Smart Contracts an a machine learning model together. Possible ideas are [this](https://github.com/thoschm/START-Summit-2017-Blockchain-Machine-Learning-Workshop) repository. You can re-implement that if you'd like. Doing something as simple as sending model training timestamps to a blockchain also work. Have fun and good luck!

## Overview

This is the code for [this](https://youtu.be/dP0-8D2fSb8) video on Youtube by Siraj Raval on how smart contracts work. This is the code for a proof of existence smart contract, a digital notary without needing to hire a lawyer. More detailed instructions can be found [here](https://blog.zeppelin.solutions/the-hitchhikers-guide-to-smart-contracts-in-ethereum-848f08001f05).

## Usage

```
# Run the testrpc ethereum blockchain
$ npm install -g ethereumjs-testrpc
$ testrpc
# First, let's install truffle
$ npm install -g truffle
# let's setup our project
$ mkdir solidity-experiments
$ cd solidity-experiments/
$ truffle init
# truffle compile
$ truffle migrate
$ truffle create contract ProofOfExistence
```

Interacting with the contract via the truffle console looks like this 

```
$ truffle console
// get the deployed version of our contract
truffle(default)> var poe = ProofOfExistence1.at(ProofOfExistence1.address)
// and print its address 
truffle(default)> poe.address
0x3d3bce79cccc331e9e095e8985def13651a86004
// let's register our first "document"
truffle(default)> poe.notarize('An amazing idea')
{ tx: '0x18ac...cb1a',
  receipt: 
   { transactionHash: '0x18ac...cb1a',
     ...
   },
  logs: [] }
// let's now get the proof for that document
truffle(default)> poe.proofFor('An amazing idea')
0xa3287ff8d1abde95498962c4e1dd2f50a9f75bd8810bd591a64a387b93580ee7
// To check if the contract's state was correctly changed:
truffle(default)> poe.proof()
0xa3287ff8d1abde95498962c4e1dd2f50a9f75bd8810bd591a64a387b93580ee7
// The hash matches the one we previously calculated
```


## Credits

The credits for this code go to [maraoz](https://github.com/maraoz/solidity-experiments). I've merely created a wrapper to get people started. 
