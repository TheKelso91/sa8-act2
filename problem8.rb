class BankAccount
    def initialize(initial_balance=0)
      @balance = initial_balance
      @transactions = []
    end
  
    def deposit(amount)
      if amount > 0
        @balance += amount
        log_transaction("Deposit", amount)
      else
        raise ArgumentError, "Deposit amount must be positive"
      end
    end
  
    def withdraw(amount)
      if amount > 0 && amount <= @balance
        @balance -= amount
        log_transaction("Withdrawal", amount)
      else
        raise ArgumentError, "Withdrawal amount must be positive and not exceed balance"
      end
    end
  
    def balance
      @balance
    end
  
    private
  
    def log_transaction(type, amount)
      @transactions << { type: type, amount: amount, timestamp: Time.now }
    end
end

account = BankAccount.new(5000)
account.deposit(1500)
account.withdraw(200)
puts "Current balance: #{account.balance}" 
