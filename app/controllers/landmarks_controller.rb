class LandmarksController < ApplicationController
  def index
    @landmarks = Landmark.all

    render json: @landmarks, status: :ok, pretty: true
  rescue ActiveRecord::RecordNotFound
    render json: {
      status: 500,
      errors: ['No landmarks found']
    }
  end

  def show
    @landmark = Landmark.find(params[:id])

    render json: @landmark, status: :ok, pretty: true
  rescue ActiveRecord::RecordNotFound
    render json: {
      status: 404, # Not Found
      errors: ['Landmark not found']
    }
  end
end
