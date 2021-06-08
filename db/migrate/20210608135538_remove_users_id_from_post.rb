class RemoveUsersIdFromPost < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :users_id, :integer
  end
end
