class Api::V1::VotesController < ApplicationController

  def vote
    @vote = Vote.find_or_create_by(user_id: vote_params[:user_id], comment_id: vote_params[:comment_id])
    @vote.vote_status=vote_params[:vote_status]
    @vote.save
    if @vote.valid?
      render json: @vote
    else
      render json: {error: true, message: "invalid vote"}
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :comment_id, :vote_status)

  end
end
