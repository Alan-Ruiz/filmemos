class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  before_action :set_user, only: [:show, :edit, :update]

  def home
    @users = User.all
    authorize @users
  end

  def index
    @users = User.all
    @users = policy_scope(@users)
  end

  def show
    authorize @user
    @user = User.find(params[:id])

  end

  def edit
    authorize @user
  end

  def update
    authorize @user
  end

  def new
    @user = User.new
    authorize @user
  end

  def create
    authorize @user
    @user = User.new(user_params)
    @category = Category.find(params[:user][:category_id])
    @user.category = @category
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private


  def categories
    arr = []
    Category.all.each do |category|
      arr << category.name
    end
    arr
  end

  def user_params
    params.require(:user).permit(:username, :password, :email, :city, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end


end
