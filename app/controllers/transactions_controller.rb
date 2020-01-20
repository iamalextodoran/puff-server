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

  def check
    expenses  = Transaction.where(type_of_t: 'expense').order(date: 'desc')
    incomes = Transaction.where(type_of_t: 'income').order(date: 'desc')

    this_month_expenses = expenses.where("date > ? AND date < ?", Time.now.beginning_of_month, Time.now.end_of_month) 
    this_month_incomes = incomes.where("date > ? AND date < ?", Time.now.beginning_of_month, Time.now.end_of_month) 

    this_month_expenses_total = 0
    this_month_incomes_total = 0

    this_month_expenses.each do |expense|
      this_month_expenses_total += expense.amount.to_f 
    end

    this_month_incomes.each do |income|
      this_month_incomes_total += income.amount.to_f 
    end

    render json: {
      thisMonthExpenses: this_month_expenses,
      thisMonthExpensesTotal: this_month_expenses_total,
      thisMonthIncomesTotal: this_month_incomes_total,
      thisMonthIncomes: this_month_incomes,
      allExpenses: expenses,
      allIncomes: incomes
    }
  end

  
  private

  def transaction_params
    api_parameters(:name, :description, :amount, :user_id, :type_of_t, :category, :date)
  end
end
