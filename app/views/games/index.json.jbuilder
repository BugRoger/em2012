json.array!(@games) do |json, game|
  json.away_team do |json|
    json.name game.away_team.name
    json.country game.away_team.country.downcase
  end
  json.home_team do |json|
    json.name game.home_team.name
    json.country game.home_team.country.downcase
  end
end
