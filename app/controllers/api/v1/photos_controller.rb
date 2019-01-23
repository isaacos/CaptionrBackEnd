class Api::V1::PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render json: @photos, :include => :comments
  end

  def create
    @photo = Photo.create(photo_params)
    if @photo.valid?
      render json: @photo, :include => :comments
    else
      @error = {error: true, message: "Invalid photo"}
      render json: @error
    end
  end



  private

  def photo_params
    params.permit(:name, :url, :user_id)
  end
end
