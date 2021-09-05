class SavedParksController < ApplicationController
  before_action :set_saved_park, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /saved_parks
  def index
    saved_parks = SavedPark.all

    render json: saved_parks
  end

  # GET /saved_parks/1
  def show
    render json: saved_park
  end

  # POST /saved_parks
  def create
    saved_park = SavedPark.new(saved_park_params)
    
    if saved_park.save
      render json: saved_park, status: :created, location: saved_park
    else
      render json: saved_park.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /saved_parks/1
  def update
    if saved_park.update(saved_park_params)
      render json: saved_park
    else
      render json: saved_park.errors, status: :unprocessable_entity
    end
  end

  # DELETE /saved_parks/1
  def destroy
    saved_park.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_park
      saved_park = SavedPark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saved_park_params
      params.fetch(:saved_park).permit(:park_id, :user_id)
    end
end
