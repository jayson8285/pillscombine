class Post < ApplicationRecord
 # dependent 필수
    has_many :likes, dependent: :destroy
    has_many :like_users, through: :likes, source: :user
    
    # dependent 필수
    has_many :dislikes, dependent: :destroy
    has_many :dislike_users, through: :dislikes, source: :user
    
    # dependent 필수
    has_many :comments, dependent: :destroy
end
