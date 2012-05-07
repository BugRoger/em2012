class RenameThemAgainLolz < ActiveRecord::Migration
  def change
    change_table :pairings do |t|
      t.rename :game, :game_id
      t.rename :team, :team_id
    end
  end
end
