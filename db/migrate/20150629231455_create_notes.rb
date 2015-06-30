class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :note_text
      t.integer :tenant_id
      t.integer :vendor_id
      t.integer :transfer_id

      t.timestamps null: false
    end
  end
end
