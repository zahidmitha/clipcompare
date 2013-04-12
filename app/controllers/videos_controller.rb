class VideosController < ApplicationController

  def index
    @videos = Video.all
    @videos.sort! { |a,b| b.votes <=> a.votes}


  end

  def create
    video = Video.new(params[:video])
    video.votes = 0
    video.save
    flash[:notice] = "Video added!"

    redirect_to video
  end

  def edit
    @video = Video.find(params[:id])
  end

  def new
    @video =Video.new
  end

  def show
    @video = Video.find(params[:id])
  end

  def add_vote
    video = Video.find(params[:id])
    video.votes ||= 0
    video.votes += 1
    video.save
    redirect_to home_index_path
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to videos_url
  end

  # def next
  #   @video = Video.all.sample
  #   redirect_to @video
  # end

end
