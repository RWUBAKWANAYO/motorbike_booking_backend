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
      @reserved_motorbikes = Reservation.where(id: params[:id])
      render json: { message: 'Unable to find your reservation', errors: @reserved_motorbikes.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def create
    @motorbike = Motorbike.find(params[:motorbike_id])
    @user = User.find(params[:user_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.motorbike_id = @motorbike.id
    @reservation.user_id = @user.id
    if @reservation.save
      render json: { message: 'reservation created' }, status: :created
    else
      render json: { message: 'Unable to create reservation', errors: @reservation_motorbikes.errors.full_messages },
             status: :unprocessable_entity
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
