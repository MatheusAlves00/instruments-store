class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :user?, only: [:index, :show, :edit, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birth_date, :email)
  end

  def user?
    if current_user.admin == true
      return true
    elsif current_user.id != params[:id].to_i
      redirect_to user_path(current_user.id)
    end
  end
end
