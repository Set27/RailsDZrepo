class RefactorDraftInPost < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :draft, :boolean
    change_column_default(:posts, :updated_at, nil)
  end
end
