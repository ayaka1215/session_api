class UsersController < ApplicationController
  def index
    users = User.all.order(data: "ASC")
    render json: users
  end
end
