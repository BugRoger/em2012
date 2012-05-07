json.array!(@teams) do |json, team|
  json.name    team.name
  json.country team.country.downcase
end
