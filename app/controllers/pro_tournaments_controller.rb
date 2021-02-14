class ProTournamentsController < ApplicationController

  def new
    @tournament = ProTournament.new
  end

  def create
    @tournament = ProTournament.new(tournament_params)
    if @tournament.save
      redirect_to root_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  private

  def tournament_params
    params.require(:pro_tournament).permit(:name, :start_on, :end_on)
  end
end
