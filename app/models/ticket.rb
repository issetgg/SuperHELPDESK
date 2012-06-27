class Ticket < ActiveRecord::Base
  attr_accessible :category, :description, :priority, :status, :technician, :user_id
end
