class CreateAssignations < ActiveRecord::Migration
  def change
    create_table :assignations do |t|
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
