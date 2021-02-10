class CreateUserGames < ActiveRecord::Migration[6.0]
  def change
    create_table :user_games do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
    add_index :user_games, :user_id
    add_index :user_games, :game_id
    add_index :user_games, [:user_id, :game_id], unique: true
  end
end
