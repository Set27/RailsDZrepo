class User < ApplicationRecord
    validates :login, presence: true, length: {minimum: 4}, uniqueness: true
    validates :password, presence: true, format: {with: /[a-zA-Z0-9]+{6,18}/, message: 'password incorrect'} 
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :subscribes, dependent: :destroy
end
