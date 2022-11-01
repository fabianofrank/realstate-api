class Property < ApplicationRecord
  validates :name, presence: true, length: { in: 3..75 }
end
