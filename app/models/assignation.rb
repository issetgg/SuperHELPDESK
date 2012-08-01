class Assignation < ActiveRecord::Base
  attr_accessible :category_id, :user_id, :id, :department
  belongs_to :user
  belongs_to :category
  def self.user(department)
    if department.eql?("Admin COMPUTO")
      return Assignation.find(:all,:include => :user,:include => :category,:conditions => 'department = "computo"') 
    elsif department.eql?("Admin ELECTRONICA")
      return Assignation.find(:all,:include => :user,:include => :category,:conditions => 'department = "electronica"')
    else
      return Assignation.find(:all,:condition => 'department = "null"')
    end
  end
end
