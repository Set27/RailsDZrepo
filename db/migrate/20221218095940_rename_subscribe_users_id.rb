class RenameSubscribeUsersId < ActiveRecord::Migration[7.0]
  def change
    rename_column :subscribes, :users_id, :sub_to_id
  end
end
