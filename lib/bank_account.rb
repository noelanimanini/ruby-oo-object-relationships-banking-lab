require 'pry'
class BankAccount
    attr_accessor :balance, :status
    attr_reader :name
  def initialize (name)
    @balance = 1000 
    @name = name
    @status = 'open'
  end 

  def deposit(deposit)
    @balance += deposit
  end 

  def display_balance
    "Your balance is $#{@balance}."
    end 

    def valid?
    if @balance > 0 && @status == "open"
        return true 
    else 
        return false
            puts @status = "closed"
    end
    end

    def close_account
    @status = 'closed'
    end 
    



end
