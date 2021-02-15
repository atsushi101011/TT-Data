class ProGame < ApplicationRecord
    belongs_to :pro_user1, class_name: "ProUser"
    belongs_to :pro_user2, class_name: "ProUser"
    belongs_to :pro_team1, class_name: "ProTeam"
    belongs_to :pro_team2, class_name: "ProTeam"
    belongs_to :tournament, class_name: "ProTournament"
    has_many :pro_scores, dependent: :destroy

    validates :name, presence: true, length: { maximum: 255 }
    validates :pro_user1_id, presence: true
    validates :pro_user2_id, presence: true
    validates :pro_team1_id, presence: true
    validates :pro_team2_id, presence: true
    validates :tournament_id, presence: true
  end