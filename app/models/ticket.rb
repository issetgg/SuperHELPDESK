class Ticket < ActiveRecord::Base
  attr_accessible :category, :description, :priority, :status, :technician, :user_id
  belongs_to :user
end
