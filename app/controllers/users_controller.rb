class UsersController < ApplicationController

  def show
    @videos = Video.all
    @transactions = current_user.transactions
    @user = User.find(params[:id])
    authorize @user
  end

end
