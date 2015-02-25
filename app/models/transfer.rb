class Transfer < ActiveRecord::Base
  belongs_to :sender, class_name: 'User' 
  belongs_to :receiver, class_name: 'User' # This is to map Receiver to User
  after_create :update_balance
  
  def update_balance()
  	sender.balance = sender.balance - self.amount
  	receiver.balance = receiver.balance + self.amount
  	
  	sender.save
  	receiver.save
  end




end
