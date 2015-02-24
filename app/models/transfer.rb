class Transfer < ActiveRecord::Base
  belongs_to :sender
  belongs_to :receiver
  before_safe :update_balance
end
