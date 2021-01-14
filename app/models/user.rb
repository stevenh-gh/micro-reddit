class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 6, maximum: 25 }
  validates :password, presence: true

  has_many :posts
  has_many :comments
end
