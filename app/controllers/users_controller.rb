class UsersController < ApplicationController
  def index
    @users = User.all

    render json: @users
  rescue ActiveRecord::RecordNotFound
    render json: {
      status: 500,
      errors: ['No users found']
    }
  end
end
