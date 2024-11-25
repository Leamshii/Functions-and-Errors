// SPDX-License-Identifier: MIT
// Compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract BankATM {
    // State variable to store the bank balance
    int256 public bankBalance;

    // Event declarations for logging activities
    event DepositMade(address indexed by, int256 amount, int256 newBalance);
    event WithdrawalMade(address indexed by, int256 amount, int256 newBalance);
    event TransferMade(address indexed from, address indexed to, int256 amount, int256 newBalance);

    // Constructor to initialize the bank with a balance
    constructor(int256 initialBalance) {
        require(initialBalance >= 0, "Initial balance cannot be negative");
        bankBalance = initialBalance;
    }

    // Function to deposit funds into the bank
    function depositFunds(int256 amount) public {
        require(amount > 0, "Deposit amount must be greater than zero");

        // Update the bank balance
        bankBalance += amount;

        // Emit the deposit event
        emit DepositMade(msg.sender, amount, bankBalance);
    }

    // Function to withdraw funds from the bank
    function withdrawFunds(int256 amount) public {
        require(amount > 0, "Withdrawal amount must be greater than zero");
        assert(bankBalance >= amount); // Contract integrity check

        // Update the bank balance
        bankBalance -= amount;

        // Emit the withdrawal event
        emit WithdrawalMade(msg.sender, amount, bankBalance);
    }

    // Function to transfer funds to another account
    function transferFunds(address recipient, int256 amount) public {
        require(recipient != address(0), "Invalid recipient address");
        require(amount > 0, "Transfer amount must be greater than zero");

        // Revert if insufficient funds
        if (bankBalance < amount) {
            revert("Insufficient funds for transfer");
        }

        // Simulate transfer by decreasing the balance
        bankBalance -= amount;

        // Emit the transfer event
        emit TransferMade(msg.sender, recipient, amount, bankBalance);

        // NOTE: Actual Ether transfer would require use of `payable` and `transfer()` or `call()`.
    }

    // Function to view the current balance of the bank
    function viewbankBalance() public view returns (int256) {
        return bankBalance;
    }
}
