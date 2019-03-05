class Transaction
 attr_reader :amount, :type, :new_balance, :date
    def initialize(amount,type, new_balance, date=Time)
      @amount = amount
      @type = type
      @new_balance = new_balance
      @date = date.new

    end

end