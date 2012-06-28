class User < ActiveRecord::Base
  attr_accessible :category, :email, :firstname, :lastname
  has_many :tickets
  has_many :assignations
  has_many :categories, :through => :assignations
end
