class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos
  end

  def likes
    @likes = current_user.liked_photos
  end
end