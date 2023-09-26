class UsersController < ApplicationController
  def index
    @users = User.all
    if @users.any?
      render json: @users, status: :ok
    else
      render json: {
        status: :not_found,
        errors: ['No users found']
      }
    end
  end
end
