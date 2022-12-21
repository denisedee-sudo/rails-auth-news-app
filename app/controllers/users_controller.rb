class UsersController < ApplicationController
  def index
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/"
    else
      redirect_to "/signup"
    end
  end

  def new
    @user = User.new
  end

  def update
  end

  def destroy
  end
  private
  def user_params
    params.require(:user).require(:name, :email, :password)
  end
end
