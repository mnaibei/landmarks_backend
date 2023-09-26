class LandmarksController < ApplicationController
  def index
    @landmarks = Landmark.all.includes(:user_reviews)

    if @landmarks.any?
      render json: @landmarks, status: :ok, pretty: true
    else
      render json: {
        status: 500,
        errors: ['No landmarks found']
      }
    end
  end

  def show
    @landmark = Landmark.includes(:user_reviews).find(params[:id])
    render json: @landmark, status: :ok, pretty: true
  rescue ActiveRecord::RecordNotFound
    render json: {
      status: 404, # Not Found
      errors: ['Landmark not found']
    }
  end
end
