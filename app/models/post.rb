# Post class, to allow users to create posts
class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true , length: { maximum: 50 }
  validates :body, presence: true
  
  belongs_to :user
end
