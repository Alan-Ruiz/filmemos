class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def home
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    # if @user.update()
  end

  def new
    @user = User.new
  end

  def create
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email, :city, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end


end
