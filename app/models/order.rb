class Order < ApplicationRecord
  t.integer :customer_id
  t.string :postal_code
  t.string :address
  t.string :name
  t.integer :shipping_cost
  t.integer :total_payment
  t.integer :status
end
