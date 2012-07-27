class Assignation < ActiveRecord::Base
  attr_accessible :category_id, :user_id, :id, :department
  belongs_to :user
  belongs_to :category
  def self.user(department)
    if department.eql?("Administrador computo")
      return Assignation.find(:all,:include => :user,:include => :category,:conditions => 'department = "computo"') 
      #return Assignation.joins(:user)
    elsif department.eql?("Administrador electronica")
      return Assignation.find(:all,:conditions => 'department = "electronica"')
    else
      return Assignation.find(:all,:condition => 'department = "null"')
    end
  end
end
