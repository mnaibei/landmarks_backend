class UserReviewsController < ApplicationController
  before_action :set_landmark, only: %i[index create]

  def index
    @user_reviews = @landmark.user_reviews.includes(:user)
    render json: @user_reviews
  end

  def create
    @user_review = @landmark.user_reviews.new(user_review_params)

    if @user_review.save
      render json: @user_review, status: :created
    else
      render json: { errors: @user_review.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user_review = UserReview.find(params[:id])
    @user_review.destroy
    render json: { message: 'User Review Deleted' }, status: :ok
  end

  private

  def user_review_params
    params.require(:user_review).permit(:user_id, :rating, :comment)
  end

  def set_landmark
    @landmark = Landmark.find(params[:landmark_id])
  end
end
