require 'transaction_history'

RSpec.describe TransactionHistory do
  let(:date) { double :date, new: '01/01/2001' }
  subject(:transaction_history) { described_class.new }

  let(:transaction) { double :transaction, amount: 10, type: 'debit', new_balance: 20, date: date }

  before(:each) do
    transaction_history.add_transaction(transaction)
  end

  it 'stores transactions' do
    expect(transaction_history.display_history).to eq [transaction]
  end
end
