class RemoveBookIdFromUserRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_rooms, :book_id, :integer
  end
end
