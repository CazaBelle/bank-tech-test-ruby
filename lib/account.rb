require 'transaction_history'
require 'transaction'

class Account 
  
  attr_reader :balance

  def initialize(transaction_history=TransactionHistory)
    @balance = 0 
    @transaction_history = transaction_history.new
  end
  
  def deposit(credit_amount, date=Date.new)
    debit_amount = 0
    @balance = @balance + credit_amount 
    new_transaction(credit_amount, debit_amount, @balance, date)
   
  end 

  def withdrawal(debit_amount, date=Date.new)
    credit_amount = 0 
    @balance -= debit_amount
    new_transaction(credit_amount, debit_amount, @balance, date)
  end

  def show_balance
    @balance
  end 

  def new_transaction(credit_amount, debit_amount, new_balance, date)
    transaction = Transaction.new(credit_amount, debit_amount, new_balance, date)
    @transaction_history.add_transaction(transaction)
  end

  def print_statement
    @transaction_history.print_history
    end
  end 
