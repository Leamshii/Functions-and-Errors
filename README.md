Functions-and-Errors Smart Contract
This repository contains a Solidity smart contract, BankATM.sol, that demonstrates the use of Solidity's built-in error handling mechanisms: require(), assert(), and revert(). The contract includes core functionalities such as depositing, withdrawing, and transferring funds, while ensuring robust state management and transparent event logging.

Overview
The BankATM.sol contract showcases the following features:

Error Handling: Implements require(), assert(), and revert() to validate inputs and maintain contract integrity.
Fund Management: Provides functions to securely deposit, withdraw, and simulate fund transfers.
Event Logging: Captures key activities such as deposits, withdrawals, and transfers to ensure transparency.
Features
Deposit Funds
Users can increase the contract balance securely through the depositFunds function.

Withdraw Funds
Users can withdraw funds, provided that sufficient balance is available.

Transfer Funds
Simulates the transfer of funds to a recipient's address.

Error Handling
The contract utilizes:

require(): For input validation.
assert(): To maintain contract state integrity.
revert(): For condition-based transaction rollback.
Event Logging
Logs each transaction to provide transparency.

Contract Details
Constructor
Initializes the contract with a specified initial balance.

Parameter:
initialBalance (int256): The starting balance of the vault (must be non-negative).
Public Functions
depositFunds
Allows users to deposit a specified amount into the vault.

Parameter:
amount (int256): The amount to deposit (must be greater than 0).
Event:
Emits DepositMade with details of the transaction.
withdrawFunds
Enables users to withdraw a specified amount from the vault.

Parameter:
amount (int256): The amount to withdraw (must be greater than 0 and less than or equal to the balance).
Event:
Emits WithdrawalMade with details of the transaction.
transferFunds
Simulates transferring a specified amount to another address.

Parameters:
recipient (address): The address of the recipient (must be valid).
amount (int256): The amount to transfer (must be greater than 0 and less than or equal to the balance).
Event:
Emits TransferMade with details of the transaction.
viewVaultBalance
Fetches the current balance of the vault.

Returns:
int256: The current balance of the vault.
Events
The contract emits the following events to track activities:

DepositMade
Parameters:
address indexed by: The address initiating the deposit.
int256 amount: The amount deposited.
int256 newBalance: The updated balance after the deposit.
WithdrawalMade
Parameters:
address indexed by: The address initiating the withdrawal.
int256 amount: The amount withdrawn.
int256 newBalance: The updated balance after the withdrawal.
TransferMade
Parameters:
address indexed from: The address initiating the transfer.
address indexed to: The recipient's address.
int256 amount: The amount transferred.
int256 newBalance: The updated balance after the transfer.
Error Handling
The contract uses Solidity's error-handling mechanisms to ensure security and reliability:

require(): Validates input parameters.
assert(): Confirms contract integrity during critical operations.
revert(): Rolls back the transaction when specific conditions are unmet.
How to Use
Deploy the Contract
Deploy the BankATM.sol contract using a Solidity compiler version ^0.8.0 with your preferred Ethereum environment, such as:

Remix IDE
Hardhat
Truffle
Interact with Functions
Use the following functions to manage the vault's balance:
depositFunds
withdrawFunds
transferFunds
Fetch the current balance using viewVaultBalance.
Monitor Events
Track deposits, withdrawals, and transfers through the emitted events:

DepositMade
WithdrawalMade
TransferMade
