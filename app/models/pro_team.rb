class ProTeam < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  has_many :pro_games, foreign_key: "pro_team1_id", dependent: :destroy
  has_many :pro_games, foreign_key: "pro_team2_id", dependent: :destroy
end
