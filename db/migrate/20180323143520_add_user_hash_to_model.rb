class AddUserHashToModel < ActiveRecord::Migration[5.1]
  def change
    add_column :soundcloud_users, :user_hash, :text
  end
end
