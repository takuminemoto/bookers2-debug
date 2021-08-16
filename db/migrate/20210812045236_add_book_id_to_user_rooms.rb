class AddBookIdToUserRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :user_rooms, :book_id, :integer
  end
end
