require 'transaction'

RSpec.describe Transaction do
  let(:mockdate){ double :mockdate, new: "01/01/2001" }
  
  describe '#new' do 

    it 'stores amount, type, new balance and the date' do
      transaction = Transaction.new(50, 1000, mockdate.new)
      expect(transaction.amount).to eq 50 
      # expect(transaction.type).to eq "debit"
      expect(transaction.new_balance).to eq 1000
      print "#{transaction.date}"
      expect(transaction.date).to eq "01/01/2001"
     
    end
    
  end 
end