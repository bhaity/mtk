class Users::PhotosController < ApplicationController
  def index
    u       = User.find(params[:user_id])
    @photos = Photo.with_role(:owner, u)
    render 'photos/index'
  end
end
