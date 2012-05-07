class Team < ActiveRecord::Base
  attr_accessible :country, :name
  
  has_many :home_games, :class_name => :Game, :foreign_key => :home_team_id
  has_many :away_games, :class_name => :Game, :foreign_key => :away_team_id

  def games 
    home_games + away_games
  end
  
end
