class SavedParksController < ApplicationController

  # GET /saved_parks
  def index
    saved_parks = SavedPark.all

    render json: saved_parks, include: {park: {include: :images}}
  end

  # GET /saved_parks/1
  def show
    saved_park = SavedPark.find_by_id(params[:id])

    render json: saved_park, include: {park: {include: :images}}
  end

  # POST /saved_parks
  def create
    saved_park = SavedPark.new(saved_park_params)
    
    if saved_park.save
      render json: saved_park, except: [:created_at, :updated_at], include: {park: {include: :images}}, status: :created, location: saved_park
    else
      render json: saved_park.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /saved_parks/1
  def update
    saved_park = SavedPark.find_by_id(params[:id])
    attraction = Attraction.create(name: saved_park_params[:attractions])
    saved_park.attractions.push(attraction)
    
    if saved_park.save
      render json: saved_park
    else
      render json: saved_park.errors, status: :unprocessable_entity
    end
  end

  # DELETE /saved_parks/1
  def destroy
    saved_park = SavedPark.find(params[:id])
    saved_park.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_park
      saved_park = SavedPark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saved_park_params
      params.fetch(:saved_park).permit(:park_id, :user_id, :attractions)
    end
end
