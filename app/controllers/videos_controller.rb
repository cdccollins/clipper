class VideosController < ApplicationController
  before_action :find_video, only: [:show, :edit, :delete]

  def index
    @videos = Video.all
  end

  def new
    @user = current_user
    @video = Video.new
    authorize @video
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    authorize @video
    if @video.save
      redirect_to video_path(@video)
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update
    @video.update(video_params)
    redirect_to video_path(@video)
    authorize @video
  end

  def destroy
    @video.destroy
    redirect_to user_path
  end

  private
  def find_video
    @video = Video.find(params[:id])
    authorize @video
  end

  def video_params
    params.require(:video).permit(:title, :description)
  end
end
