class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :email, uniqueness: { case_sensitive: false }

    has_many :posts

    has_many :likes, dependent: :destroy
    has_many :liked_posts, through: :likes, source: :post

    has_many :comments, dependent: :destroy
    has_many :commented_posts, through: :comments, source: :post

    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followees, through: :followed_users

    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users

    has_many :trips, dependent: :destroy
    
    has_many :booked_trips, foreign_key: :renter_id, class_name: 'Trip'
    has_many :renters, through: :trips

    has_one_attached :photo

end
