class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.text :tenant_name
      t.text :protocol
      t.integer :sponsor_id

      t.timestamps null: false
    end
  end
end
