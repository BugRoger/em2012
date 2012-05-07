class GamesController < ApplicationController
  respond_to :html, :json

  def index
    respond_with(@games = Game.all)
  end
end
