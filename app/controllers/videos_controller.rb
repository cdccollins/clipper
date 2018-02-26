class VideosController < ApplicationController

  def index
    @videos.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to video_path(@video)
    else
      render:new
    end
  end

  def show
  end

  def edit
  end

  def update
    @video.update(video_params)
    redirect_to video_path(@video)
  end

  private
  def set_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:title)
end
