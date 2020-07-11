class Movie < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true
  paginates_per 18
end
