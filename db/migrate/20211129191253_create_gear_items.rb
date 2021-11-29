class CreateGearItems < ActiveRecord::Migration[6.1]
  def change
    create_table :gear_items do |t|
      t.string :name
      t.string :category
      t.string :image
      t.string :description
      t.integer :weight
      t.boolean :packed
      t.integer :quantity
      t.belongs_to :user

      t.timestamps
    end
  end
end
