class VideosController < ApplicationController
  before_action :find_video, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @videos = policy_scope(Video).order(created_at: :desc)
    if params[:search].present? && params[:duration].present?
      @videos = Video.search_everything(params[:search])
      @videos = @videos.where("duration <= ?", params[:duration].to_i)
    elsif params[:duration]
      @videos = Video.search_everything(params[:search])
    elsif params[:search].present?
      @videos = Video.search_everything(params[:search])
    else
      @videos = Video.all
    end
    authorize @videos
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
    @transaction = Transaction.new
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
    params.require(:video).permit(:title, :description, :tags, :price, :location, :video, :duration)
  end
end
