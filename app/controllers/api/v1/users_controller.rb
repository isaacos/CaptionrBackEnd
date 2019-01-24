class Api::V1::UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user
    else
      render json: @user.errors.messages
    end
  end

  def login
    @user=User.where("lower(username) = ?", params[:username].downcase).first
    render json: @user
  end

  private

  def user_params
    params.permit(:username)
  end
end
