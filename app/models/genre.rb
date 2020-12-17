class Genre < ApplicationRecord
  has_many :items

  enum is_active: {
    有効: true,
    無効: false
  }

  validates :name, uniqueness: true, presence: true
end
