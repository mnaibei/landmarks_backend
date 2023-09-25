class User < ApplicationRecord
  has_many :user_reviews
  has_many :landmarks, through: :user_reviews

  validates :username, presence: true
end
