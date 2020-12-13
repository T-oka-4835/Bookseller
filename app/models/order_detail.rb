class OrderDetail < ApplicationRecord
  t.integer :order_id
  t.integer :item_id
  t.integer :price
  t.integer :amount
  t.integer :making_status
end
