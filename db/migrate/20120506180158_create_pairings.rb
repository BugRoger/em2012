class CreatePairings < ActiveRecord::Migration
  def change
    create_table :pairings do |t|
      t.integer :game_id
      t.integer :team_id
      t.boolean :home_team

      t.timestamps
    end
  end
end
