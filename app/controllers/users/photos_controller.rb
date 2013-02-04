class Users::PhotosController < ApplicationController
  load_and_authorize_resource
  def index
    u       = User.find(params[:user_id])
    if u == current_user
      @photos = Photo.with_role('owner', u)
    else
      @photos = Photo.with_role('owner', u).visible
    end

    render 'photos/index'
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
  end

  def show
    render 'photos/show'
  end

  def edit
    render 'photos/edit'
  end
end
