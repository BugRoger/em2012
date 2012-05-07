require 'spec_helper'

describe Team do
  it "should know all games the tema is playing" do
    team0 = create(:team)
    team1 = create(:team)

    game0 = create(:game, home_team: team0, away_team: team1)
    game1 = create(:game, home_team: team1, away_team: team0)
    
    team0.games.should == [game0, game1]
  end
end
