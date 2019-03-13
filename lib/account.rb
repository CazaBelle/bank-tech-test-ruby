require 'transaction_history'
require 'transaction'

class Account 
  
  attr_reader :balance

  def initialize(transaction_history=TransactionHistory)
    @balance = 0 
    @transaction_history = TransactionHistory.new
  end
  
  def deposit(amount, date=Date.new)
    @balance = @balance + amount 
    new_transaction(amount, @balance, date)
   
  end 

  def withdrawal(amount, date=Date.new)
    @balance -= amount
  end

  def show_balance
    @balance
  end 

  def new_transaction(amount, new_balance, date)
    transaction = Transaction.new(amount, balance, date)
    @transaction_history.add_transaction(transaction)
  end

  def print_statement
    @transaction_history.print_history

    end
  end 
