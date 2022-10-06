class Api::V1::MotorbikesController < ApplicationController
  # before_action :logged_in

  def index
    motorbikes = Motorbike.all.order(created_at: :desc)
    if motorbikes
      render json: motorbikes, include: [:reservations]
    else
      render json: { error: 'There is no motorbikes' }
    end
  end

  def show
    motorbike = Motorbike.find_by_id(params[:id])
    if motorbike
      render json: motorbike, include: [:reservations]
    else
      render json: { error: 'Unable to find motorbike' }
    end
  end
end
