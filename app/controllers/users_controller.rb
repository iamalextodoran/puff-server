class UsersController < ApplicationController
  def index
    user = User.order(:full_name)
    render json: user
  end
  
  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(get_params)
    user.save
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    User.destroy
    render json: user
  end

  private 
  def get_params
    api_params(:full_name :picture)
  end
end
