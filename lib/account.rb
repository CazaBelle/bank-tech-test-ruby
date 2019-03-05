require 'transaction_history'
require 'transaction'

class Account 
  
  attr_reader :balance

  def initialize(transaction_history=TransactionHistory)
    @balance = 0 
    @transaction_history = TransactionHistory.new
  end
  
  HEADER = 'date || credit || debit || balance\n'

  def deposit(amount, date=Date.new)
    @balance = @balance + amount 
    new_transaction(amount, 'nil', @balance, date)
   
  end 

  def withdrawal('nil', amount, date=Date)
    @balance -= amount
  end

  def show_balance
    @balance
  end 

  def new_transaction(amount, credit, debit new_balance, date)
    transaction = Transaction.new(amount, type, balance, date)
    @transaction_history.add_transaction(transaction)
  end

  def print_statement
      @transaction_history.history.map do |transaction| 
 
      "#{transaction.date} || #{transaction.amount} || #{transaction.amount} || #{transaction.new_balance}" 
      end.unshift(HEADER).join("\n")
  
    end
  end 
