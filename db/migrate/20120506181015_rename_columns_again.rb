class RenameColumnsAgain < ActiveRecord::Migration
  def change
    change_table :pairings do |t|
      t.rename :game_id, :game
      t.rename :team_id, :team
    end
  end
end
