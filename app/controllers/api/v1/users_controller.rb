class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]
  before_action :find_user, only: [:update]

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def profile
    render json: { user: UserSerializer.new(curr_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: @user.errors }, status: :not_acceptable
    end
  end

  def update
    @user.update(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :accepted
    else
      render json: { error: @user.errors }, status: :not_acceptable
    end
  end

  private

    def user_params
      params.permit(:id, :username, :password, :email, :zipcode, :bio, :admin)
    end

    def find_user
      @user = User.find(params[:id])
    end

end
