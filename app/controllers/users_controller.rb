class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def destroy
    @user = User.find(params[:id])
    if @user == current_user
      flash[:exception] = "Can not delete current logged in user"
      redirect_to action: 'index'
    else
      @user.destroy
      redirect_to action: 'index'
    end
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  private
    def users_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
