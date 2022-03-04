require "./lib/bank_account.rb"

RSpec.describe "bank account" do
    context "create bank account" do
        it "creates a bank account for user with balance of 0" do
            new_user_bank_account = BankAccount.new
            expect(new_user_bank_account.balance).to eq(0)
        end
    end
end