class User < ApplicationRecord
    validates :email, uniqueness: true
    validates :email, presence: true
    has_secure_password

    has_many :gear_items

    def add_default_gear
        gear_items = JSON.parse(File.read(Rails.root.join('db/gear_items.json')))

        gear_items.each do |g|
            GearItem.create(
                name: g['name'],
                category: g['category'],
                image: g['image'],
                description: g['description'],
                weight: g['weight'],
                quantity: g['quantity'],
                user: self
            )
        end
    end
end
