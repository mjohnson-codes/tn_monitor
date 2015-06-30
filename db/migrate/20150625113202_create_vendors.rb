class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.text :vendor_name
      t.integer :transfer_id

      t.timestamps null: false
    end
  end
end
