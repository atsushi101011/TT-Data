class ProScoresController < ApplicationController
  def new
    @score = ProScore.new
    @game = ProGame.find_by(params[:id])
  end
end
