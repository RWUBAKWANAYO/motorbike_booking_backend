class Api::V1::MotorbikesController < ApplicationController
  # before_action :logged_in

  def index
    @motorbikes = Motorbike.all.order(created_at: :desc)
    if @motorbikes
      render json: @motorbikes, include: [:reservations]
    else
      render json: { message: 'There is no motorbikes', errors: @motorbikes.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def show
    @motorbike = Motorbike.find(params[:id])
    if @motorbike
      render json: @motorbike, include: [:reservations]
    else
      render json: { message: 'Unable to find @motorbike', errors: @motorbikes.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def create
    @category = Category.find(params[:category_id])
    @motorbike = Motorbike.new(motorbike_params)
    @motorbike.category_id = @category.id
    if @motorbike.save
      render json: { message: 'Motorbike created successfully' }
    else
      render json: { message: 'Error creating motorbike', errors: @motorbike.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    @motorbike = Motorbike.find(params[:id])
    if @motorbike.destroy
      render json: { message: 'Motorbike deleted successfully' }
    else
      render json: { message: 'Error deleting motorbike', errors: @motorbike.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    @motorbike = Motorbike.find_by_id(params[:id])
    if @motorbike.update(reserved_params)
      render json: { message: 'Motorbike updated successfully' }
    else
      render json: { error: 'Error updating motorbike' }
    end
  end

  private

  def motorbike_params
    params.require(:motorbike).permit(:image, :category_id, :price, :year, :motor_name)
  end
end
