class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :likes
  has_many :participants
  # has_many :posts_tags, dependent: :destroy
  # has_many :tags, through: :posts_tags
  acts_as_taggable_on :labels
  acts_as_taggable
end
