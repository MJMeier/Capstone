class AddGameDateToUserGame < ActiveRecord::Migration[5.2]
  def change
    add_column :user_games, :game_date, :string
  end
end
