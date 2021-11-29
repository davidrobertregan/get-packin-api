class AddDefaultValueToPacked < ActiveRecord::Migration[6.1]
  def change
      change_column :gear_items, :packed, :boolean, :default => false
  end
end
