class Api::V1::ToursController < ApplicationController
  skip_before_action :authorized, only: [:index]
  # before_action :find_tour, only: [:update]

  def index
    @tours = Tour.all
    render json: @tours
  end

  def create
    @tour = Tour.create(tour_params)
    if @tour.valid?
      render json: @tour, status: :accepted
    else
      render json: { errors: @tour.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # def update
  #   @tour.update(tour_params)
  #   if @tour.save
  #     render json: @tour, status: :accepted
  #   else
  #     render json: { errors: @tour.errors.full_messages }, status: :unprocessible_enttity
  #   end
  # end
  #
  # private
  #
  #   def tour_params
  #     params.require(:tour).permit(:start_time, :end_time, :price)
  #   end

    # def find_tour
    #   @tour = Tour.find(params[:id])
    # end

end
