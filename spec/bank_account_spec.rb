require "./lib/bank_account.rb"

RSpec.describe "bank account" do
    new_account = BankAccount.new
    context "create bank account" do
        it "creates a bank account for user with balance of 0" do
            expect(new_account.balance).to eq(0)
        end
    end

    context "deposit money" do
        it "deposits a specified amount of money and updates balance" do
            new_account.deposit(500)
            expect(new_account.balance).to eq(500)
        end
    end

    context "withdraw money" do
        it "withdraws a specified amount of money and updates balance" do
            new_account.withdraw(200)
            expect(new_account.balance).to eq(300)
        end

        it "prevents withdrawals that take balance below 0" do
            new_account.withdraw(400)
            expect(new_account.balance).to eq(300)
            expect(new_account.withdraw(400)).to be_a_kind_of(String)
        end
    end

    context "statement" do
        

    end
end