class Game < ApplicationRecord
  validates :tournament_name, presence: true, length: { maximum: 255 }
  validates :date, presence: true
  validates :opponent_name, presence: true, length: { maximum: 255 }
  validates :opponent_team, presence: true, length: { maximum: 255 }

  has_many :user_games, dependent: :destroy
  #belongs_to :score
end
