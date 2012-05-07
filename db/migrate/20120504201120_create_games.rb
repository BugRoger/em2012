class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :team_a
      t.string :team_b

      t.timestamps
    end
  end
end
