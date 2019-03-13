class TransactionHistory
attr_reader :history

  def initialize
    @history = []
  end 

  HEADER = 'date || credit || debit || balance'

  def add_transaction(transaction)
    @history.push(transaction)
  end

  def display_history
    @history
  end 

  def print_history
    @history.map do |transaction| 
      "#{transaction.date} || #{transaction.amount} || #{transaction.amount} || #{transaction.new_balance}" 
      end.unshift(HEADER).join("\n")
  end

end 