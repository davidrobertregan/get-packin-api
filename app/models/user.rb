class User < ApplicationRecord
    validates :email, uniqueness: true
    validates :email, presence: true
    has_secure_password

    has_many :user_gear_items
    has_many :gear_items, through: :user_gear_items
end
