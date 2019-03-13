class Transaction
  attr_reader :credit_amount, :debit_amount, :new_balance, :date
  def initialize(credit_amount, debit_amount, new_balance, date)
    @credit_amount = credit_amount
    @debit_amount = debit_amount
    @new_balance = new_balance
    @date = date
  end
end
