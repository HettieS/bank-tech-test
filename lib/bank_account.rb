class BankAccount
    attr_reader :balance

    def initialize
        @balance = 0
    end

    def deposit(amount)
        @balance += amount
    end

    def withdraw(amount)
        if amount > @balance
            "Insuffient funds, withdrawal unsuccessful"
        else
            @balance -= amount
        end
    end
end