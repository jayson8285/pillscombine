class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # dependent 필수
  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
  
end
