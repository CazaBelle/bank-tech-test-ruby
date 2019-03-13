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
      # date =(double :date, new: 2001-01-01)
      date = Date.new(2001,01,01)
      test_account = Account.new
      test_account.deposit(1000, date)
      test_account.deposit(2000, date)
      # test_account.withdrawal(50, Date.new(2001-01-01))
      expect(test_account.print_statement).to eq  "date || credit || debit || balance\n2001-01-01 || 1000 || 0 || 1000\n2001-01-01 || 2000 || 0 || 3000"
      
    end 
  end 
end