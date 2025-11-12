// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐

class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType; // Savings/Checking
  
  // Constructor:
  BankAccount(this.accountNumber, this.accountHolder, this.accountType) : balance = 0.0;
  
  // Deposit Method
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited ${amount.toStringAsFixed(2)} to account $accountNumber");
    }
    else{
      print(("Invalid deposit amount: ${amount.toStringAsFixed(2)}"));
    }
  }
  
  //  withdraw(double amount): Remove money from account (check for sufficient funds)
  void withdraw(double amount) {
    if (amount <= 0) {
      print("Invalid withdrawal amount: ${amount.toStringAsFixed(2)}");
    }
    else if (amount > balance){
      print("Insufficient funds for withdrawal of ${amount.toStringAsFixed(2)} from account $accountNumber");
    }
    else{
      balance -= amount;
      print("Withdrew ${amount.toStringAsFixed(2)} from account $accountNumber");
    }
  }
  
  //  getBalance(): Return current balance
  double getBalance() {
    return balance;
  }
  
  //  displayAccountInfo(): Show account details
  void displayAccountInfo() {
    print("Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: ${balance.toStringAsFixed(2)}");
  }
}

void main() {
  // 4. Create 3 bank accounts and demonstrate:
  //    - Depositing money
  //    - Withdrawing money
  //    - Displaying account information
  //    - Handling insufficient funds scenario

  BankAccount account1 = BankAccount("12345", "Alice", "Savings");
  BankAccount account2 = BankAccount("67890", "Bob", "Checking");
  BankAccount account3 = BankAccount("11111", "Charlie", "Savings");

  account1.deposit(1500.0);
  account2.deposit(900.0);
  account3.deposit(2500.0);

  account1.withdraw(0.0);
  account2.withdraw(100.0);
  account3.withdraw(0.03);

  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();

  account2.withdraw(1000.0); // This should show insufficient funds message
}
