class RemoveTeamAFromGames < ActiveRecord::Migration
 def up
    remove_column :games, :team_a
    remove_column :games, :team_b
  end
 
  def down
    add_column :games, :team_a, :string
    add_column :games, :team_b, :string
  end

end
