class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.text :name
      t.integer :task_id

      t.timestamps null: false
    end
  end
end
