class DrawResult < ApplicationRecord
  belongs_to :user
  belongs_to :fortune

  validates :drawn_on, uniqueness: { scope: :user_id }  # １日１回制限の本体
end
