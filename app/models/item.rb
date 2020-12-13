class Item < ApplicationRecord
  t.integer :genre_id
  t.string :name
  t.string :image_id
  t.text :introduction
  t.integer :price
  t.boolean :is_active, default: false
end
