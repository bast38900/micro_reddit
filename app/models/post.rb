# Post class, to allow users to create posts
class Post < ApplicationRecord
  belongs_to :user
end
