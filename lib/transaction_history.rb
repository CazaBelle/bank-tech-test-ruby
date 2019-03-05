class TransactionHistory
attr_reader :history

  def initialize
    @history = []
  end 

  def add_transaction(transaction)
    @history.push(transaction)
  end

  def show_history
    # @history
  end

end 