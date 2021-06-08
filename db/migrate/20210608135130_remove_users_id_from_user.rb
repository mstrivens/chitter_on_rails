class RemoveUsersIdFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :users_id, :integer
  end
end
