class CreateLogRecords < ActiveRecord::Migration
  def change
    create_table :log_records do |t|
      t.text :log_file
      t.integer :success_code
      t.text :attachment
      t.datetime :task_start_time
      t.datetime :task_end_time
      t.integer :task_id

      t.timestamps null: false
    end
  end
end
