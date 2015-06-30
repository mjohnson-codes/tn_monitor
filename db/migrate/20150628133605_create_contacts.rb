class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :name
      t.text :email
      t.text :phone
      t.integer :vendor_id
      t.integer :tenant_id
      t.integer :sponsor_id

      t.timestamps null: false
    end
  end
end
