class Subscribe < ApplicationRecord
  validates :subscribe_to, presence: true, uniqueness: {scope: :user_id, message: "this user already followed"}
  belongs_to :user
end
