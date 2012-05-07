class TeamsController < ApplicationController
  respond_to :json

  def index
    respond_with(@teams = Team.all)
  end
end
