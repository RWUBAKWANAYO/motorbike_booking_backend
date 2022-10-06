class AdvertsController < ApplicationController
  before_action :set_advert, only: %i[ show update destroy ]

  # GET /adverts
  def index
    @adverts = Advert.all

    render json: @adverts
  end

  # GET /adverts/1
  def show
    render json: @advert
  end

  # POST /adverts
  def create
    @advert = Advert.new(advert_params)

    if @advert.save
      render json: @advert, status: :created, location: @advert
    else
      render json: @advert.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adverts/1
  def update
    if @advert.update(advert_params)
      render json: @advert
    else
      render json: @advert.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adverts/1
  def destroy
    @advert.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advert
      @advert = Advert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def advert_params
      params.require(:advert).permit(:name, :image)
    end
end
