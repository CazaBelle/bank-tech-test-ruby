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
end 