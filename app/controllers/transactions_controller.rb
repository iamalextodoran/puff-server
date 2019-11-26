class TransactionsController < ApplicationController
  def index
    trans = Transaction.all
    render json: trans
  end

  def show
    trans = Transaction.find(params[:id])
    render json: trans
  end

  def create
    trans = Transaction.new(get_params)
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
    api_params(:name :description :amount :type :category :date)
  end
end
