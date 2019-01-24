class Api::V1::CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    render json: @comment, :include => :photo
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :photo_id, :user_id)
  end
end
