class DeleteUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :user_id
    remove_column :posts, :user_id
    remove_column :posts, :index_posts_on_user_id
  end
end
