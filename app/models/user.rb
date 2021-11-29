class User < ApplicationRecord
    validates :email, uniqueness: true
    validates :email, presence: true
    has_secure_password

    has_many :gear_items
end
