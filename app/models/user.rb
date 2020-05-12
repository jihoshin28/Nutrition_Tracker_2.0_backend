class User < ApplicationRecord
    has_many :food_posts
    has_many :exercise_posts
    has_many :notes
    has_many :weights
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :age, presence: true
    validates :diet_type, presence: true
    validates :weight, presence: true
    validates :height, presence: true
    validates :email, presence: true
    validates :gender, presence: true
end
