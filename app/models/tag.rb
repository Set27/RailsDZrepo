class Tag < ApplicationRecord
    has_many :taggings, dependent: :destroy
    has_many :posts, through: :taggings, dependent: :destroy
end
