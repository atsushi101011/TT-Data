class ProGamesController < ApplicationController
  skip_before_action :require_login, only: %i[index]
  before_action :find_game, only: %i[edit update destroy]

  def index
    @pro_games = ProGame.all
  end

  def new
    @game = ProGame.new
  end

  def create
    @game = ProGame.new(game_params)
    if @game.save
      redirect_to new_pro_game_pro_score_path(@game), success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def edit; end

  def update
    if @game.update(game_params)
      redirect_to pro_games_path, success: t('.success')
    else
      flash.now['danger'] = t('.fail')
      render :edit
    end
  end

  def destroy
    @game.destroy!
    redirect_to pro_games_path, success: t('.success')
  end

  private

  def game_params
    params.require(:pro_game).permit(:name, :pro_user1_id, :pro_user2_id, :pro_team1_id, :pro_team2_id, :tournament_id)
  end

  def find_game
    @game = ProGame.find(params[:id])
  end
end
