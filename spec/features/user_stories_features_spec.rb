require 'account'

RSpec.describe 'User Stories' do 
  it 'allows user to have a bank account' do 
    account = Account.new
    expect(account).to be_a Account
  end 

end 