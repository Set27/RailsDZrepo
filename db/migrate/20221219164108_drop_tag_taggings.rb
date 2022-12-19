class DropTagTaggings < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :taggings, :posts
    remove_foreign_key :taggings, :tags
    drop_table :tags
    drop_table :taggings
  end
end
