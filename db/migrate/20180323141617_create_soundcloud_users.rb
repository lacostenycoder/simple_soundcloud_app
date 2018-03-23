class CreateSoundcloudUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :soundcloud_users do |t|
      t.string :user_name

      t.timestamps
    end
  end
end
