class UsersController < ApplicationController
  before_action :set_target_user, only: [:show, :update, :use_permit, :destroy]

  def index
    users = User.all
    render json: users
  end

  def show
    render json: @user
  end

  def update
    @user.update!(user_params)
    head :ok
  end

  def use_permit
    @user.update!(is_permitted: true)
    head :ok
  end

  def destroy
    @user.destroy!
    head :ok
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :image)
  end

  def set_target_user
    @user = User.find(params[:id])
  end
end
