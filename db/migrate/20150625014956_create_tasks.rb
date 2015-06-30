class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :task_name
      t.text :command_line
      t.integer :tenant_id

      t.timestamps null: false
    end
  end
end
