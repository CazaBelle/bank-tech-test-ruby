class Transaction
 attr_reader :amount, :new_balance, :date
    def initialize(amount, new_balance, date)
      @amount = amount
      
      @new_balance = new_balance
      @date = date

    end

end