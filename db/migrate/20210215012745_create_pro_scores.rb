class CreateProScores < ActiveRecord::Migration[6.0]
  def change
    create_table :pro_scores do |t|
      t.integer :set, null: false
      t.integer :point, null: false
      t.integer :serve_course, null: false
      t.integer :pro_user1_point_skill
      t.integer :pro_user2_point_skill
      t.integer :rally_count, null: false
      t.integer :pro_game_id

      t.timestamps
    end
  end
end
