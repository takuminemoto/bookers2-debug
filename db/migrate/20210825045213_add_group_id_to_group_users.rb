class AddGroupIdToGroupUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :group_users, :group_id, :integer
    add_index :group_users, :group_id
  end
end
