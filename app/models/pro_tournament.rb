class ProTournament < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :start_on, presence: true
  validates :end_on, presence: true

  has_many :pro_games, foreign_key: "tournament_id", dependent: :destroy
end
