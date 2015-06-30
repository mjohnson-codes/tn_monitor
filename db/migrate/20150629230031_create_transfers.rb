class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.text :name
      t.text :date_type
      t.integer :sponsor_id
      t.integer :vendor_id

      t.timestamps null: false
    end
  end
end
