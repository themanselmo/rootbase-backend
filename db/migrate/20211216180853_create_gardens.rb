class CreateGardens < ActiveRecord::Migration[6.1]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :crop
      t.integer :organization_id

      t.timestamps
    end
  end
end
