class TransactionsController < ApplicationController
  def index
    render json: Transaction.all
  end

  def show
    trans = Transaction.find(params[:id])
    render json: trans
  end

  def create
    trans = Transaction.create!(transaction_params.merge(user_id: 14))
    render json: trans
  end

  def update
    trans = Transaction.find(params[:id])
    trans.update(transaction_params)
    render json: trans
  end

  def destroy
    trans = Transaction.find(params[:id])
    trans.destroy
    render json: trans
  end

  def only_income
    render json: Transaction.as_income
  end

  def only_expense
    render json: Transaction.as_expense
  end

  private

  def transaction_params
    api_params(:name, :description, :amount, :type_of_t, :category, :date)
  end
end
