class Api::V1::PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render json: @photos, :include => :comments
  end

  def create
    @photo = Photo.create(photo_params)
    render json: @photo, :include => :comments
  end



  private

  def photo_params
    params.permit(:name, :url)
  end
end
