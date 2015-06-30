class AddPermissionLevelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :permisssion_level, :text
  end
end
