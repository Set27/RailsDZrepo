class Post < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    belongs_to :user
    has_many :comments, as: :commentable, dependent: :destroy
    acts_as_taggable_on :tags

    scope :unpublished, -> { where(published_at: nil) }
    scope :published, -> { where.not(published_at: nil) }

    def published?
        published_at != nil
    end
end
