class Subscribe < ApplicationRecord
  # validates :subscribe_to, presence: true, uniqueness: {scope: :user_id, message: "this user already followed"}
  belongs_to :user
  validates :user_id, presence: true, uniqueness: {scope: :sub_to_id, message: "this user already followed"}
end
