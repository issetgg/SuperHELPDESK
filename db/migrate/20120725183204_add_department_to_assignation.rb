class AddDepartmentToAssignation < ActiveRecord::Migration
  def change
    add_column :assignations, :department, :string
  end
end
