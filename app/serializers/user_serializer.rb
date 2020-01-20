class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :picture, :dark_mode, :selected_at, :danger, :total_expenses, :total_incomes

  has_many :transactions

  def total_expenses
    expenses = object.transactions.where(type_of_t: 'expense').order(date: 'desc')
    this_month_expenses = expenses.where("date > ? AND date < ?", Time.now.beginning_of_month, Time.now.end_of_month)

    this_month_expenses_total = 0

    this_month_expenses.each do |expense|
      this_month_expenses_total += expense.amount.to_f 
    end
    return this_month_expenses_total
  end

  def total_incomes
    incomes = object.transactions.where(type_of_t: 'income').order(date: 'desc')
    this_month_incomes = incomes.where("date > ? AND date < ?", Time.now.beginning_of_month, Time.now.end_of_month)

    this_month_incomes_total = 0

    this_month_incomes.each do |expense|
      this_month_incomes_total += expense.amount.to_f 
    end
    return this_month_incomes_total
  end

end