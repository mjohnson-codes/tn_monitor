class CreateDts < ActiveRecord::Migration
  def change
    create_table :dts do |t|
      t.text :document_name
      t.text :version
      t.date :go_live_date
      t.integer :transfer_id

      t.timestamps null: false
    end
  end
end
