class AddDraftToPost < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :draft  
    add_column :posts, :draft, :boolean, :default => true
  end
end
