class RenameReferences < ActiveRecord::Migration
  def up
    change_table :games do |t|
      t.references :home_team
      t.references :away_team

    end
    remove_column :games, :team_a_id
    remove_column :games, :team_b_id
  end

  def down
    add_column :games, :team_a_id, :integer
    add_column :games, :team_a_id, :integer
  end
end
