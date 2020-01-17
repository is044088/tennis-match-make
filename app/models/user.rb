class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rater_users,  foreign_key: "rater_id",  class_name: "reputation"
  has_many :target_users, foreign_key: "target_id", class_name: "reputation"
  has_one :ability
  accepts_nested_attributes_for :ability
  has_many :posts
  has_many :likes
  has_many :participants

end
