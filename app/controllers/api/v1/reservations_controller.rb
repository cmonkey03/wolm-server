class Api::V1::ReservationsController < ApplicationController
  skip_before_action :authorized, only: [:index]
  before_action :find_reservation, only: [:destroy]

  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def create
    @reservation = Reservation.create(reservation_params)
    if @reservation.valid?
      render status: :accepted, json: {
        message: "Your spot has been reserved!",
        reservation: @reservation,
        tour: @reservation.tour
      }.to_json
    else
      render json: { errors: @reservation.errors.full_messages }, status: :not_acceptable
    end
  end

  def destroy
    @reservation
    @reservation.destroy
    if @reservation.destroyed?
      render status: 200, json: {
        message: "Reservation successfully cancelled.",
        reservation: @reservation
      }.to_json
    else
      render json: { errors: @reservation.errors.full_messages }, status: :not_acceptable
    end
  end

  private

    def reservation_params
      params.permit(:id, :user_id, :tour_id)
    end

    def find_reservation
      @reservation = Reservation.find(params[:id])
    end

end
