class NewTable < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string "login"
      t.string "password"
      t.timestamps
    end

    create_table :posts do |t|
      t.string "title"
      t.text "body"
      t.timestamps
      t.references :user, null: false, foreign_key: true
    end

    create_table :comments do |t|
      t.text "body"
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
    end
  end
end
