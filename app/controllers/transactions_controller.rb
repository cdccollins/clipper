class TransactionsController < ApplicationController
  def new
    @user = current_user
    @transaction = Transaction.new
    authorize @transaction
  end

   def create
    @transaction = Transaction.new
    @transaction.user_id = current_user
    @video = Video.find(params[:video_id])
    @transaction.cost = @video.price
    @transaction.video_id = @video
    authorize @transaction
    redirect_to video_path(@video)
  end

  private
  def transaction_params
  end
end
