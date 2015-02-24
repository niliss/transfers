class User < ActiveRecord::Base
  validates :balance, :numericality => { :greater_than: 50000 }	
end
