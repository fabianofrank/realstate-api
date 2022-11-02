# frozen_string_literal: true

class Property < ApplicationRecord
  has_many_attached :images

  validates :name, presence: true, length: { in: 3..75 }

  def image_as_thumbnail
    images.map do |image|
      image.variant(resize_to_limit: [800, 800]).processed
    end
  end
end
