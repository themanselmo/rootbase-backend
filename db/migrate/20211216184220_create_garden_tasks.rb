class CreateGardenTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :garden_tasks do |t|
      t.integer :garden_id
      t.integer :task_id

      t.timestamps
    end
  end
end
