class Refactor < ActiveRecord::Migration[7.0]
  def change
    change_table :subscribes do |t|
      t.remove :subscribe_to
      t.references :users
    end
  end
end
