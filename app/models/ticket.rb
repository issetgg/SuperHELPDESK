class Ticket < ActiveRecord::Base
    attr_accessible :category, :description, :priority, :status, :technician, :user_id, :id
    belongs_to :user

    #Preguntaer si los tickets que se veran son los creados por el mismo usuario o quienes ven estos tickets
    def self.user(department)
       if department.eql?("Administrador computo")
          #return Ticket.joins(:user)
	  return Ticket.all
       elsif department.eql?("Administrador electronica")
          return Ticket.joins(:user) 
          #return Ticket.all
       else
          return Category.find(:all,:condition => 'department = "null"')
       end
    end

end
