class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :home_team
      t.integer :home_score
      t.string :away_team
      t.integer :away_score
      t.date :date

      t.timestamps
    end
  end
end
