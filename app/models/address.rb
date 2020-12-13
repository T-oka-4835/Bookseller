class Address < ApplicationRecord
  t.integer :customer_id
  t.string :name
  t.string :postal_code
  t.string :address
end
