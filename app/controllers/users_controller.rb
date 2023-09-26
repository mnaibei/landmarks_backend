class UsersController < ApplicationController
  def index
    @users = User.all

    if @users
      render json: @users
    else
      render json: {
        status: 500,
        errors: ['No users found']
      }
    end
  end
end
