class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

    def user_params
      params.permit(:username, :password, :email, :zipcode, :bio)
    end

    def find_user
      @user = User.find(params[:id])
    end

end
