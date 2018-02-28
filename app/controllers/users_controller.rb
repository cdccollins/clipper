class UsersController < ApplicationController

  def show
    @videos = Video.all
    @user = User.find(params[:id])
    authorize @user
  end

end
