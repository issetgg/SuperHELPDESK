class Category < ActiveRecord::Base
  attr_accessible :name, :department
  has_many :assignations
  has_many :users, :through => :assignations
  def self.assignation(department)
    if department.eql?("computo")
       return Category.find(:all,:conditions => 'department = "computo"')
    elsif department.eql?("electricidad")
       return Category.find(:all,:conditions => 'department = "electricidad"') 
    else
       return Category.find(:all,:condition => 'department = "null"')
    end
  end
end
