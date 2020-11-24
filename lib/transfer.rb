require 'pry'
require_relative 'bank_account'

class Transfer
  attr_accessor :status, :amount, :sender, :receiver
  def initialize (sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = 50
    # binding.pry
  end 

  def valid?
     @receiver.valid? && @sender.valid?
  end 

  def execute_transaction 
    if valid? && sender.balance > @amount && @status == "pending"
        sender.balance -= amount
        receiver.balance += amount
        @status = "complete"
    else sender.balance < @amount
      return "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end
   
    def reverse_transfer
      if @status = "complete"
        sender.balance += amount
        receiver.balance -= amount
        @status = "reversed"
      end
    end 

end 

# c1 = Transfer.new(amanda, avi, 50)
# c2 = Transfer.new(avi, amanda, 50)








