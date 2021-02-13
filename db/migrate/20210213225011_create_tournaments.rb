class CreateTournaments < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.date :start_on
      t.date :end_on

      t.timestamps
    end
  end
end
