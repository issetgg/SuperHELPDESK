class User < ActiveRecord::Base
  attr_accessible :category, :email, :firstname, :lastname
end
