class RefactorDraftInPost2 < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:posts, :updated_at, '0000-00-00 00:00:00')
  end
end
