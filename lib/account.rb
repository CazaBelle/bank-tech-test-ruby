require 'transaction_history'
require 'transaction'

class Account 
  
  attr_reader :balance

  def initialize(transaction_history=TransactionHistory)
    @balance = 0 
    @transaction_history = transaction_history.new
  end
  
  def deposit(credit_amount, date=Date.new)
    raise "Can only deposit amounts > 0. Try again" if credit_amount < 0 || credit_amount == Float::NAN
    debit_amount = 0
    @balance = @balance + credit_amount 
    new_transaction(credit_amount, debit_amount, @balance, date)
  end 

  def withdrawal(debit_amount, date=Date.new)
    raise "Can only withdrawal amounts > 0. Try again" if debit_amount < 0 || debit_amount == Float::NAN
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
