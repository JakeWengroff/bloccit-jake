class AddUserPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer, :name
      add_index :posts, :user_id
  end
end
