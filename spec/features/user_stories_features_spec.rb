require 'account'


RSpec.describe Account do 
subject(:account){ described_class.new }

  it 'is available as a described class' do 
    expect(account).to be_a Account
  end 

  describe '#deposit' do 
    it 'allows user to make a deposit' do 
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
    
    it 'raises an error if user tries to deposit a negative number' do 
      expect{ account.deposit(-100) }.to raise_error "Can only deposit amounts > 0. Try again"
    end 
  end 

  describe '#withdrawal' do 
    it 'allow user to make a withdrawal' do 
      account.deposit(1000)
      account.withdrawal(500)
      expect(account.balance).to eq 500
    end 
  end 

  describe '#show_balance' do 
    it 'shows the balance' do 
      account.deposit(50) 
      expect(account.show_balance).to eq 50
  end 
end

  describe '#print_history' do 
    it 'allows the user to print a transaction history' do 
      date = Date.new(2001,01,01)
      account.deposit(1000, date)
      account.deposit(2000, date)
      expect(account.print_statement).to eq  "date || credit || debit || balance\n2001-01-01 || 1000 || 0 || 1000\n2001-01-01 || 2000 || 0 || 3000"
      
    end 
  end 
end