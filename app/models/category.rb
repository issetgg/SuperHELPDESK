class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :assignations
  has_many :users, :through => :assignations
end
