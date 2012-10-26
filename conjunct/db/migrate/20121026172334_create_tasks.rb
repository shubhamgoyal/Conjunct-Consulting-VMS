class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string "task_name"
      t.string "description"
      t.datetime "deadline"
      t.integer "owner_id"
      t.timestamps
    end
  end
end
