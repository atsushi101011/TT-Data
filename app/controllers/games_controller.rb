class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
  end

  def index
  end

  private

  def game_params
    params.require(:game).permit(:tournament_name, :date, :opponent_name, :opponent_team)
  end

end
