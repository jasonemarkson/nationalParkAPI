class ParksController < ApplicationController
    def index
        if params[:user_id]
            user = User.find_by_id(params[:user_id])
            parks = user.parks
        else
            parks = Park.all
        end

        render json: parks, except: [:created_at, :updated_at], include: :images
    end

    def show
        park = Park.find_by_id(params[:id])

        render json: park, except: [:created_at, :updated_at], include: :images
    end

    def create
        park = Park.create(park_params)

        render json: park
    end

    def destroy
        parks = Park.all
        park = Park.find_by_id(params[:id])
        park.destroy

        render json: parks
    end

    private

    def park_params
        params.require(:park).permit(:fullName, :parkCode, :description, :latitude, :longitude, :url, :park_images)
    end
end
