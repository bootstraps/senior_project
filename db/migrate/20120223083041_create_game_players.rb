class CreateGamePlayers < ActiveRecord::Migration
  def change
    create_table :game_players do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :place

      t.timestamps
    end
  end
end
