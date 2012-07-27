class Category < ActiveRecord::Base
  attr_accessible :name, :department
  has_many :assignations
  has_many :users, :through => :assignations
  def self.assignation(department)
    if department.eql?("Administrador computo") || department.eql?("Tecnico computo")
       return Category.find(:all,:conditions => 'department = "computo"')
    elsif department.eql?("Administrador electronica") || department.eql?("Tecnico electronica")
       return Category.find(:all,:conditions => 'department  = "electronica"') 
    else
       return Category.find(:all,:condition => 'department = "null"')
    end
  end
end
