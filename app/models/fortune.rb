class Fortune < ApplicationRecord
  has_many :draw_results
  has_many :users, through: :draw_results
end
