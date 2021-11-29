class CreateUserGearItems < ActiveRecord::Migration[6.1]
  def change
    create_table :user_gear_items do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :gear_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
