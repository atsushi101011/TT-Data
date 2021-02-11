class GamesController < ApplicationController
  before_action :find_game, only: %i[edit update destroy]

  def index
    @usergames = UserGame.where(user_id:current_user.id)
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      @usergame = UserGame.create(user_id:current_user.id, game_id:@game.id)
      redirect_to new_score_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def edit; end

  def update
    if @game.update(game_params)
      redirect_to games_path, success: t('.success')
    else
      flash.now['danger'] = t('.fail')
      render :edit
    end
  end

  def destroy
    @game.destroy!
    redirect_to games_path, success: t('.success')
  end

  private

  def game_params
    params.require(:game).permit(:tournament_name, :date, :opponent_name, :opponent_team)
  end

  def find_game
    @game = Game.find(params[:id])
  end

end
