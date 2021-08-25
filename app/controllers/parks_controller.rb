class ParksController < ApplicationController
    def index
        parks = Park.all 

        render json: parks
    end

    def show
        park = Park.find_by_id(params[:id])

        render json: park
    end

    def create
        park = Park.create(
            fullName: params[:fullName],
            parkCode: params[:parkCode],
            description: params[:description],
            latitude: params[:latitude],
            longitude: params[:longitude],
            images: params[:images],
            activities: params[:activities]
        )

        render json: park
    end

    def destroy
        parks = Park.all
        park = Park.find_by_id(params[:id])
        park.destroy

        render json: parks
    end
end
