class TransactionsController < ApplicationController
  # has_scope :by_type,

  def index
    render json: Transaction.all
  end

  def show
    trans = Transaction.find(params[:id])
    render json: trans
  end

  def create
    trans = Transaction.create!(transaction_params)
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

  def all_expenses
    expenses  = Transaction.where(type_of_t: 'expense').order(date: 'desc')

    this_month_expenses = expenses.where("date > ? AND date < ?", Time.now.beginning_of_month, Time.now.end_of_month) 

    render json: {
      thisMonthExpenses: this_month_expenses,
      allExpenses: expenses,
    }
  end

  def all_incomes
    incomes = Transaction.where(type_of_t: 'income').order(date: 'desc')
    this_month_incomes = incomes.where("date > ? AND date < ?", Time.now.beginning_of_month, Time.now.end_of_month) 
  end

  
  private

  def transaction_params
    api_parameters(:name, :description, :amount, :user_id, :type_of_t, :category, :date)
  end
end
