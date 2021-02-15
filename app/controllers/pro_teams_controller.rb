class ProTeamsController < ApplicationController
  def new
    @team = ProTeam.new
  end

  def create
    @team = ProTeam.new(team_params)
    if @team.save
      redirect_to root_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  private

  def team_params
    params.require(:pro_team).permit(:name)
  end
end
