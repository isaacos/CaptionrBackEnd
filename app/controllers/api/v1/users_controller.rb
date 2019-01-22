class Api::V1::UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def login
    @user=User.find_by(username: params[:username])
    render json: @user
  end

  private

  def user_params
    params.permit(:username)
  end
end