# frozen_string_literal: true

class Property < ApplicationRecord
  has_many_attached :images

  validates :name, presence: true, length: { in: 3..75 }
end
