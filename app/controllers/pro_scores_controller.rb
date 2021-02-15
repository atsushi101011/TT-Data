class ProScoresController < ApplicationController
  def new
    @score = ProScore.new
  end
end
