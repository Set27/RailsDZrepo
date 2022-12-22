class DropUserTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :subscribes, :user_id
    drop_table :users
  end
end
