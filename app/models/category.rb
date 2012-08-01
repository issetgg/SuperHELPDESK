class Category < ActiveRecord::Base
  attr_accessible :name, :department
  has_many :assignations
  has_many :users, :through => :assignations
  def self.assignation(department)
    if department.eql?("Admin COMPUTO") || department.eql?("Personal COMPUTO")
       return Category.find(:all,:conditions => 'department = "computo"')
    elsif department.eql?("Admin ELECTRONICA") || department.eql?("Personal ELECTRONICA")
       return Category.find(:all,:conditions => 'department  = "electronica"') 
    else
       return Category.find(:all,:condition => 'department = "null"')
    end
  end
end
