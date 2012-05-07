# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery_ujs
#= require bootstrap
#
#= require em 

$ ->
  window.games = new EM.Games [
    new EM.Game(team_a: "Germany", team_b: "England")
    new EM.Game(team_a: "France",  team_b: "Portugal")
    new EM.Game(team_a: "Spain",   team_b: "Poland")
  ]

  window.teams = new EM.Teams [
    new EM.Team(name: "Germany")
    new EM.Team(name: "England")
    new EM.Team(name: "France")
    new EM.Team(name: "Spain")
    new EM.Team(name: "Portugal")
    new EM.Team(name: "Poland")
  ]

  EM.start(games: games, teams: teams)
