require 'transaction'

RSpec.describe Transaction do
  let(:date){ double :date, new: "01/01/2001" }
  
  describe '#new' do 

    it 'stores amount, type, new balance and the date' do
      transaction = Transaction.new(50, "debit", 1000, date)
      expect(transaction.amount).to eq 50 
      expect(transaction.type).to eq "debit"
      expect(transaction.new_balance).to eq 1000
      print "#{transaction.date}"
      expect(transaction.date).to eq "01/01/2001"
     
    end
    
  end 
end