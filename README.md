**Functions-and-Errors**

A smart contract that implements the require(), assert(), and revert() statements.



This repository contains a simple Solidity smart contract called BankATM.sol which demonstrates the use of Solidity's built-in error handling functions: require(), assert(), and revert(). The contract implements basic token deposit, withdrawal, and transfer functions with these checks to ensure the correct behavior of the contract.

**Features**
   •Deposit Funds: Increase the contract balance securely.
   •Withdraw Funds: Withdraw funds if sufficient balance is available.
   •Transfer Funds: Simulate transferring funds to a recipient's address.
   •Error Handling: Implements require(), assert(), and revert() for robust state management and input validation.
   •Event Logging: Captures deposits, withdrawals, and transfers for transparency.


**Contract Details**
Constructor
Initializes the contract with an initial balance.
   •Parameter:
      •initialBalance: The starting balance of the vault (must be non-negative).

      
**Public Functions**
depositFunds
   Allows users to deposit funds into the vault.
      •Parameter:
      amount: The amount to deposit (must be greater than 0).
      •Events:
      Emits DepositMade with details of the transaction.

      
withdrawFunds
Allows users to withdraw funds from the vault.

Parameter:
amount: The amount to withdraw (must be greater than 0 and less than or equal to the balance).
Events:
Emits WithdrawalMade with details of the transaction.
transferFunds
Simulates transferring funds to another account.

Parameters:
recipient: The address of the recipient (must be valid).
amount: The amount to transfer (must be greater than 0 and less than or equal to the balance).
Events:
Emits TransferMade with details of the transaction.
viewVaultBalance
Fetches the current balance of the vault.

Returns:
The current vault balance.
Events
DepositMade(address indexed by, int256 amount, int256 newBalance)
WithdrawalMade(address indexed by, int256 amount, int256 newBalance)
TransferMade(address indexed from, address indexed to, int256 amount, int256 newBalance)
These events provide transparency by logging every transaction.
