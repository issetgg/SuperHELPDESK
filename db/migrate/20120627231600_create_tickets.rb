class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.text :description
      t.text :status
      t.string :category
      t.string :priority
      t.string :technician

      t.timestamps
    end
  end
end
