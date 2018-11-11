class CreateUserGames < ActiveRecord::Migration[5.2]
  def change
    create_table :user_games do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :confidence_point
      t.string :users_pick

      t.timestamps
    end
  end
end
