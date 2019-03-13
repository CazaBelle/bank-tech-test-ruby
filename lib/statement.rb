class Statement
  attr_reader :new_statement
    
    def initialize(new_statement)
      @new_statement = new_statement
    end

    def format
      @new_statement.each_line do |line|
        puts line
      end 
    end 
   
end 