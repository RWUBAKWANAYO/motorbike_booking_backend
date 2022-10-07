class Api::V1::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render json: { reservation: @reservations }
  end

  def show
    @reserved_motorbikes = Reservation.where(id: params[:id])
    if @reserved_motorbikes
      render json: { reservation: @reserved_motorbikes }
    else
      render json: { error: 'Unable to find your reservation' }, status: :unprocessable_entity
    end
  end

  def create
    # @motorcycle = Motorcycle.find(params[:id])
    @reservation = Reservation.new(reservation_params)
    # @reservation.motorcycle_id = @motorcycle.id
    # @reservation.user_id = current_user.id
    # @reservation.total_price =
    if @reservation.save
      render json: { message: 'reservation created' }, status: :created
    else
      render json: { error: 'Unable to create reservation' }, status: :unprocessable_entity
    end
  end

  def destroy
    if Reservation.find(params[:id]).destroy
      render json: { message: 'reservation deleted' }
    else
      render json: { error: 'Unable to delete reservation' }, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:motorbike_id, :user_id, :date, :city)
  end
end
