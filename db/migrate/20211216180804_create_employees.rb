class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :pin
      t.integer :organization_id

      t.timestamps
    end
  end
end
