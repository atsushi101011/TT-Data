class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      @usergame = UserGame.create(user_id:current_user.id, game_id:@game.id)
      redirect_to games_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def index
    @usergames = UserGame.where(user_id:current_user.id)
  end

  private

  def game_params
    params.require(:game).permit(:tournament_name, :date, :opponent_name, :opponent_team)
  end

end
