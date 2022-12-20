class Subscribe < ApplicationRecord
  # validates :subscribe_to, presence: true, uniqueness: {scope: :user_id, message: "this user already followed"}
  belongs_to :user
  belongs_to :sub_to, class_name: "User"
  validates :user_id, presence: true, uniqueness: {scope: :sub_to_id, message: "this user already followed"}
  validate :subscribe_to_yourself

  def subscribe_to_yourself
    if(sub_to == user)
      errors.add(:sub_to_id, "user cannot follow themself")
    end
  end
end
