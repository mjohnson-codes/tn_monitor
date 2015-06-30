class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.text :name
      t.text :username
      t.text :password
      t.text :basedir
      t.integer :transfer_id

      t.timestamps null: false
    end
  end
end
