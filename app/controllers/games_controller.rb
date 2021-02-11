class GamesController < ApplicationController
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
    if @board.update(board_params)
      redirect_to @board, success: t('.success')
    else
      flash.now['danger'] = t('.fail')
      render :edit
    end
  end

  def destroy
    @board.destroy!
    redirect_to boards_path, success: t('.success')
  end

  private

  def game_params
    params.require(:game).permit(:tournament_name, :date, :opponent_name, :opponent_team)
  end

end
