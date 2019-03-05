require 'account'


RSpec.describe 'User Stories' do 
  it 'allows user to have a bank account' do 
    account = Account.new
    expect(account).to be_a Account
  end 

  describe '#deposit' do 
    it 'allows user to make a deposit' do 
      account = Account.new 
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end 
  end 

  describe '#withdrawal' do 
    it 'allow user to make a withdrawal' do 
      account = Account.new
      account.deposit(1000, Transaction)
      account.withdrawal(500)
      expect(account.balance).to eq 500
    end 
  end 

  describe '#show_balance' do 
    it 'shows the balance' do 
      account = Account.new
      account.deposit(50) 
      expect(account.show_balance).to eq 50
  end 
end

  describe '#print_history' do 
    it 'allows the user to print a transaction history' do 
      account = Account.new
      account.deposit(1000)
      account.withdrawal(500)
      expect(account.print_history).to eq 'date || credit || debit || balance\n 19/02/2019 || || 500.00 || 1000\n 19/02/2019 || 500|| || 500\n'
    end 
  end 
end 