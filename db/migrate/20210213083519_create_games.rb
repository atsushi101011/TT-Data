class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :tournament_name
      t.date :date
      t.string :opponent_name
      t.string :opponent_team
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
