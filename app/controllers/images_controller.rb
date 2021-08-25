class ImagesController < ApplicationController
  # before_action :set_image, only: [:index, :show, :create, :destroy]

  # GET /images
  def index
    images = Image.all

    render json: images
  end

  # GET /images/1
  def show
    render json: image
  end

  # POST /images
  def create
    image = Image.new(image_params)

    if image.save
      render json: image, status: :created, location: image
    else
      render json: image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /images/1
  def destroy
    image.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      image = Image.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def image_params
      params.require(:park).permit(credit: params[:credit], title: params[:title], altText: params[:altText], caption: params[:caption], url: params[:url])
    end
end
