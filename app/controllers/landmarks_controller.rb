class LandmarksController < ApplicationController
  def index
    @landmarks = Landmark.all

    if @landmarks
      render json: @landmarks, status: :ok, pretty: true
    else
      render json: {
        status: 500,
        errors: ['No landmarks found']
      }
    end
  end

  def show
    @landmark = Landmark.find(params[:id])

    if @landmark
      render json: @landmark, status: :ok, pretty: true
    else
      render json: {
        status: 500,
        errors: ['Landmark not found']
      }
    end
  end
end
