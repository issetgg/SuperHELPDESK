class AddDepartmentToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :department, :string
  end
end
