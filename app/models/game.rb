class Game < ActiveRecord::Base
  attr_accessible :home_team, :away_team

  belongs_to :home_team, :class_name => :Team
  belongs_to :away_team, :class_name => :Team
end
