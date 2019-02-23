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
      account.deposit(1000)
      account.withdrawal(500)
      expect(account.balance).to eq 500
    end 
  end 
end 