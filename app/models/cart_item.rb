class CartItem < ApplicationRecord
  t.integer :item_id
  t.integer :customer_id
  t.integer :amount
end
