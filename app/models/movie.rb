class Movie < ApplicationRecord
  include PosterImageUploader[:poster_image]
  # Add the following:
  # .poster_image_data
  # .poster_image
  # .poster_image_url
  
  validates :title, presence: true
  validates :year_released, numericality: { only_integer: true, greater_than: 1800, less_than: 2100 }
end
