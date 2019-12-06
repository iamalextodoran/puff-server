class TransactionsController < ApplicationController
  def index
    render json: Transaction.all

  end

  def show
    trans = Transaction.find(params[:id])
    render json: trans
  end

  def create
    trans = Transaction.create(get_params)
    render json: trans
  end

  def update
    trans = Transaction.find(params[:id])
    trans.update(get_params)
    render json: trans
  end

  def destroy
    trans = Transaction.find(params[:id])
    trans.destroy
    render json: trans
  end

  private 
  def get_params
    json_api_params(:name, :description, :amount, :type_of_t, :category, :date)
  end
end
