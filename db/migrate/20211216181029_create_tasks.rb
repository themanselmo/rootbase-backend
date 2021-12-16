class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.date :due_date
      t.integer :organization_id
      t.timestamps
    end
  end
end
