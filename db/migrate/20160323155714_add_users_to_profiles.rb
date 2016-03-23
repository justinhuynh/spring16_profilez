class AddUsersToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :user_id, :integer, null: false
  end
end
