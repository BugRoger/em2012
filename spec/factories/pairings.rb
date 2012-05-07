# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pairing do
    game_id 1
    team_id 1
    home_team false
  end
end
