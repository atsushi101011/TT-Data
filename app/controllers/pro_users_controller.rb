class ProUsersController < ApplicationController
  def new
    @user = ProUser.new
  end

  def create
    @user = ProUser.new(user_params)
    if @user.save
      redirect_to root_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  private

  def user_params
    params.require(:pro_user).permit(:name)
  end
end
