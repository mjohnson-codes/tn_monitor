class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.text :sponsor_name

      t.timestamps null: false
    end
  end
end
