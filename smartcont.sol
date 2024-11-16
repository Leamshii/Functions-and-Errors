// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract smartcont {
    // State variable to store the balance
    int public balance;

    // Constructor to set initial balance
    constructor(int initialBalance) {
        balance = initialBalance;
    }

    // Function using `require()`
    function deposit(int amount) public {
        // Ensure the deposit amount is positive
        require(amount > 0, "Deposit amount must be greater than 0");

        // Update the balance after the deposit
        balance += amount;
    }

    // Function using `assert()`
    function withdraw(int amount) public {
        // Ensure there are enough funds in the contract for withdrawal
        assert(balance >= amount); // This is an internal check to maintain contract integrity

        // Update the balance after withdrawal
        balance -= amount;
    }

    // Function using `revert()`
    function transfer(address recipient, int amount) public {
        // Revert the transaction if the balance is insufficient
        if (balance < amount) {
            revert("Insufficient funds for transfer");
        }

        // Transfer the funds (for this example, we just decrease the balance)
        balance -= amount;
        // Normally, you would transfer the funds to the recipient's address
    }

    // A function to get the contract's balance (just for reading)
    function getBalance() public view returns (int) {
        return balance;
    }
}
