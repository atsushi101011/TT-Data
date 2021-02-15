class CreateProGames < ActiveRecord::Migration[6.0]
  def change
    create_table :pro_games do |t|
      t.string :name
      t.integer :pro_user1_id
      t.integer :pro_team1_id
      t.integer :pro_user2_id
      t.integer :pro_team2_id
      t.integer :tournament_id

      t.timestamps
    end
  end
end
