class Api::V1::AdvertsController < ApplicationController
  before_action :set_advert, only: %i[destroy]

  def index
    @adverts = Advert.all
    if @adverts
      render json: { message: 'Adverts fetched successfully', data: @adverts }, status: :ok
    else
      render json: { message: 'fail to get adverts', errors: @adverts.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def create
    @advert = Advert.new(advert_params)

    if @advert.save
      render json: { message: 'Advert created successfully', data: @advert }, status: :created
    else
      render json: { message: 'Fail to create Advert', errors: @advert.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    if @advert.destroy
      render json: { message: 'Advert deleted successfully' }
    else
      render json: { message: 'Fail to delete Advert', errors: @advert.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

  def set_advert
    @advert = Advert.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    render json: { status: 404, error: e.message }, status: :not_found
  end

  def advert_params
    params.require(:advert).permit(:name, :image)
  end
end
