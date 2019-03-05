require 'transaction_history'
require 'transaction'

class Account 
  
  attr_reader :balance
  
  def initialize(transaction_history=TransactionHistory)
    @balance = 0 
    @transaction_history = TransactionHistory.new
  end

  def deposit(amount, transaction=Transaction)
    @balance = @balance + amount 
    Transaction.new(amount, 'credit', @balance, )
    # @transaction_history.add_transaction(transaction.new(amount, 'credit', @balance))
  end 

  def withdrawal(amount)
    @balance -= amount
  end

  def show_balance
    @balance
  end 

  #in order to print history I need a way to store each transaction
  def print_history
  'date || credit || debit || balance\n 19/02/2019 || || 500.00 || 1000\n 19/02/2019 || 500|| || 500\n'
  end

  
end 