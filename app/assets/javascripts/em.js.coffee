#= require underscore
#= require json2
#= require backbone
#= require backbone.marionette
#= require hamlcoffee
#
#= require_self
#
#= require_tree ./templates


Backbone.Marionette.Renderer.render = (template, data) ->
  JST[template](data);

window.EM = new Backbone.Marionette.Application

EM.addRegions
  shell: "#shell"

EM.addInitializer (options) ->
  teams = new EM.Teams
  teams.fetch()

  games = new EM.Games
  games.fetch()
  
  gamesView = new EM.GamesView(collection: games) 
  teamsView = new EM.TeamsView(collection: teams)
  EM.shell.show(gamesView)

class EM.Game extends Backbone.Model
class EM.Games extends Backbone.Collection
  model: EM.Game
  url: '/games'

class EM.Team extends Backbone.Model

class EM.Teams extends Backbone.Collection
  model: EM.Team
  url: '/teams'

class EM.GameView extends Backbone.Marionette.ItemView
  tagName: 'tr'
  template: 'game' 

class EM.GamesView extends Backbone.Marionette.CompositeView
  template: 'games'
  itemView: EM.GameView
  appendHtml: (collectionView, itemView) ->
    collectionView.$('tbody').append itemView.el


class EM.TeamView extends Backbone.Marionette.ItemView
  tagName: 'tr'
  template: 'team' 

class EM.TeamsView extends Backbone.Marionette.CompositeView
  className: 'teams'
  itemView: EM.TeamView
  template: 'teams'
  appendHtml: (collectionView, itemView) ->
    collectionView.$('tbody').append itemView.el
