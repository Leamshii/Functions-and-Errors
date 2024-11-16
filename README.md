# Functions-and-Errors
A smart contract that implements the require(), assert() and revert() statements.


This repository contains a simple Solidity smart contract called `smartcont.sol` which demonstrates the use of Solidity's built-in error handling functions: `require()`, `assert()`, and `revert()`. The contract implements basic token deposit, withdrawal, and transfer functions with these checks to ensure the correct behavior of the contract.

## Table of Contents

- [Overview](#overview)
- [Contract Functions](#contract-functions)
- [Prerequisites](#prerequisites)
- [Testing the Contract](#testing-the-contract)

## Overview

The `smartcont.sol` contract includes the following key features:
- **Deposit**: Allows users to deposit funds into the contract, with a check to ensure the deposit amount is greater than 0 using `require()`.
- **Withdraw**: Allows users to withdraw funds, with an internal state check using `assert()` to ensure the contract's balance remains correct.
- **Transfer**: Allows a user to transfer funds to a recipient, with an explicit check using `revert()` when there are insufficient funds.

## Contract Functions

1. **deposit(int256 amount)**:  
   - Takes an amount to deposit into the contract.  
   - Uses `require()` to ensure the deposit amount is greater than 0.  
   - If the condition fails, the transaction is reverted with the error message `"Deposit amount must be greater than 0"`.

2. **withdraw(int256 amount)**:  
   - Allows users to withdraw a specified amount.  
   - Uses `assert()` to check that the balance is sufficient for withdrawal.
   - If the balance is insufficient, the `assert()` fails and the transaction is reverted, indicating an internal consistency error.

3. **transfer(address recipient, int256 amount)**:  
   - Transfers a specified amount to a recipient.  
   - Uses `revert()` to revert the transaction with the message `"Insufficient funds for transfer"` if the balance is insufficient.

## Prerequisites

To run this contract, you need the following tools installed:

- **Solidity**: The smart contract is written in Solidity (version 0.8.0 or higher).
- **Remix IDE** or **HardHat** for deploying and testing the contract.

## Testing the Contract

After deploying the contract, you can interact with it by calling the following functions:

1. **Deposit**:  
   Call the `deposit(int256 amount)` function with a valid amount to deposit.  
   - If you try to deposit a value less than or equal to 0, it will trigger a `require()` failure with the message `"Deposit amount must be greater than 0"`.

2. **Withdraw**:  
   Call the `withdraw(int256 amount)` function with a valid amount to withdraw.  
   - If the withdrawal amount exceeds the balance, it will trigger an `assert()` failure and revert the transaction due to an internal consistency error.

3. **Transfer**:  
   Call the `transfer(address recipient, int256 amount)` function to transfer funds.  
   - If the contract balance is less than the transfer amount, it will revert the transaction with the message `"Insufficient funds for transfer"`.

### Example:

To test the contract in **Remix**, follow these steps:

1. **Deploy the Contract**:  
   Deploy the contract using Remix's "Deploy & Run Transactions" plugin.

2. **Call Functions**:  
   - **Deposit**: Call the `deposit(100)` function to deposit 100 tokens into the contract.
   - **Withdraw**: Call `withdraw(50)` to withdraw 50 tokens.
   - **Transfer**: Call `transfer(0xRecipientAddress, 25)` to transfer 25 tokens.

   If you attempt to deposit 0 or withdraw more than the available balance, the contract will revert the transaction with an appropriate error message.
