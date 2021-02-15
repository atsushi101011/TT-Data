class ProUser < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }

  has_many :pro_games, foreign_key: "pro_user1_id", dependent: :destroy
  has_many :pro_games, foreign_key: "pro_user2_id", dependent: :destroy
end
