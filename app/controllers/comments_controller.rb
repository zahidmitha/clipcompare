class CommentsController < ApplicationController

  def create
    @video = Video.find(params[:video_id])
    # @comment = @video.comments.create!({body: params[:comment][:body], commenter: params[:comment][:commenter]})
    @comment = @video.comments.create(params[:comment])
    redirect_to video_path(@video)
  end

  def destroy
    @video= Video.find(params[:video_id])
    @comment = @video.comments.find(params[:id])
    @comment.destroy
    redirect_to video_path(@video)
  end

end
