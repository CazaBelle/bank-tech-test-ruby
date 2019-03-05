class Transaction
 attr_reader :amount, :type, :new_balance, :date
    def initialize(amount, credit, debit new_balance, date)
      @amount = amount
      @credit = credit
      @debit = debit
      @new_balance = new_balance
      @date = date

    end

    def credit? 
      format(@credit)
    end 

    def debit?
      format(@debit)
    end 
    
    def format(amount)
      amount != nil ? amount.to_s + ".00 " : nil
    end
end