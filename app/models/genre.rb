class Genre < ApplicationRecord
  t.string :name
  t.boolean :is_active, default: false
end
