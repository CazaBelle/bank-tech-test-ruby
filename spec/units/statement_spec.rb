require 'statement'

RSpec.describe Statement do 

    describe '#format' do 
      it 'take in a string and prints each line individually' do 
        statement = Statement.new("This is a test line\nThis is another test line\n") 
        expect(statement.format).to eq "This is a test line\nThis is another test line\n"
      end 
    end 

end 
