class CreateSubscribes < ActiveRecord::Migration[7.0]
  def change
    create_table :subscribes do |t|
      t.integer :subscribe_to
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
