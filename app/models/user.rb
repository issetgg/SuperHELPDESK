class User < ActiveRecord::Base
  acts_as_authentic do |c|
  end
  attr_accessible :category, :email, :firstname, :lastname, :password, :password_confirmation
  has_many :tickets
  has_many :assignations
  has_many :categories, :through => :assignations
end
