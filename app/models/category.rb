class Category < ActiveRecord::Base
  attr_accessible :name, :department
  has_many :assignations
  has_many :users, :through => :assignations
end
