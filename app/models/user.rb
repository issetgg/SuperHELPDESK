class User < ActiveRecord::Base
  attr_accessible :category, :email, :firstname, :lastname
  has_many :tickets
end
