# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teams = Team.create [
  { name: "Croatia",              country: "CRO" },
  { name: "Czech Republic",       country: "CZE" },
  { name: "Denmark",              country: "DEN" },
  { name: "England",              country: "ENG" },
  { name: "France",               country: "FRA" },
  { name: "Germany",              country: "GER" },
  { name: "Greece",               country: "GRE" },
  { name: "Italy",                country: "ITA" },
  { name: "Netherlands",          country: "NED" },
  { name: "Poland",               country: "POL" },
  { name: "Portugal",             country: "POR" },
  { name: "Republic of Ireland",  country: "IRL" },
  { name: "Russia",               country: "RUS" },
  { name: "Spain",                country: "ESP" },
  { name: "Sweden",               country: "SWE" },
  { name: "Ukraine",              country: "UKR" } ]

game = Game.create(home_team: teams[0], away_team: teams[1])
game = Game.create(home_team: teams[1], away_team: teams[2])
game = Game.create(home_team: teams[2], away_team: teams[7])
game = Game.create(home_team: teams[3], away_team: teams[4])
game = Game.create(home_team: teams[4], away_team: teams[2])


