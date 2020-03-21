class User < ApplicationRecord
    has_many :food_posts
    has_many :exercise_posts
    has_many :notes
    has_many :weights
    has_secure_password
end
