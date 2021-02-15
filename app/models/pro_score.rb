class ProScore < ApplicationRecord
  belongs_to :pro_game

  validates :set, presence: true
  validates :point, presence: true
  validates :serve_course, presence: true
  validates :pro_user1_point_skill, presence: true
  validates :pro_user2_point_skill, presence: true
  validates :rally_count, presence: true
end
