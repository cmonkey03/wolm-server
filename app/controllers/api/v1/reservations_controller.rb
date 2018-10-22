class Api::V1::ReservationsController < ApplicationController
  skip_before_action :authorized, only: [:index]
  before_action :find_reservation, only: [:destroy]

  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  private

    def reservation_params
      params.permit(:id, :user_id, :tour_id)
    end

    def find_reservation
      @reservation = Reservation.find(params[:id])
    end

end
