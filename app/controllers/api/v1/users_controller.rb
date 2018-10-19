class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]

  def index
    @users = User.all
    render json: @users, status: 200
  end

  

  private

    def user_params
      params.permit(:username, :password, :email, :zipcode, :bio)
    end

    def find_user
      @user = User.find(params[:id])
    end

end
