class UsersController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    @user = User.create( user_params )
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user = User.update( user_params )
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end
end
