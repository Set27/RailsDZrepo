class AddNullToUpdatedAtPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :published_at, :datetime
    change_column_default(:posts, :published_at, nil)
  end
end
