class ProScore < ApplicationRecord
  belongs_to :pro_game

  validates :set, presence: true
  validates :point, presence: true
  validates :serve_course, presence: true
  validates :pro_user1_point_skill, presence: true
  validates :pro_user2_point_skill, presence: true
  validates :rally_count, presence: true

  enum serve_course: { 'フォア長': 0, 'ミドル長': 1, 'バック長': 2, 'フォア前': 3, 'ミドル前': 4, 'バック前': 5}
  enum pro_user1_point_skill: {'サーブ': 0, 'レシーブ': 1, 'フォアドライブ': 2, 'バックドライブ': 3}, _prefix: true
  enum pro_user2_point_skill: {'サーブ': 0, 'レシーブ': 1, 'フォアドライブ': 2, 'バックドライブ': 3, 'ブロック': 4}, _prefix: true
  enum rally_count: {'1回': 0, '2回': 1, '3回': 2, '4回': 3, '5回': 4, '6回〜': 5}
end
