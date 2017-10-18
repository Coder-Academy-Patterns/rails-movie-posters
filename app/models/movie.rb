class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year_released, numericality: { only_integer: true, greater_than: 1800, less_than: 2100 }
end
