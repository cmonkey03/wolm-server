class Api::V1::ToursController < ApplicationController
  skip_before_action :authorized, only: [:index]
  # before_action :find_tour, only: [:update]

  def index
    @tours = Tour.all
    render json: @tours
  end

  private

    def tour_params
      params.require(:tour).permit(:start_time, :end_time, :price)
    end

    # def find_tour
    #   @tour = Tour.find(params[:id])
    # end

end
