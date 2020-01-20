class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :picture, :dark_mode, :selected_at, :danger, :total_expenses

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
end