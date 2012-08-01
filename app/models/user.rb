class User < ActiveRecord::Base
  acts_as_authentic do |c|
  end
  attr_accessible :category, :email, :firstname, :lastname, :password, :password_confirmation, :id
  has_many :tickets
  has_many :assignations
  has_many :categories, :through => :assignations
  def self.assignation(department)
    if department.eql?("Admin COMPUTO")
       return User.find(:all,:conditions => 'category LIKE "%computo%"')
    elsif department.eql?("Admin ELECTRONICA")
       return User.find(:all,:conditions => 'category LIKE "%electronica%"')
    else
       return User.find(:all,:condition => 'department = "null"')
    end
  end

end
