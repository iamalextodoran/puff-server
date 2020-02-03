# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_list = [42, 43, 44, 45]

user_list.each do |username|
  Transaction.create(category: "food", user_id: username, name: "Milk", description: "no ndeed for that thing", amount: "1300", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "food", user_id: username, name: "Cheese", description: "no ndeed for that thing", amount: "300", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "savings", user_id: username, name: "Save some", description: "no ndeed for that thing", amount: "2020", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "savings", user_id: username, name: "Hard times", description: "no ndeed for that thing", amount: "1600", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "travel", user_id: username, name: "Greece", description: "no ndeed for that thing", amount: "1000", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "travel", user_id: username, name: "France", description: "no ndeed for that thing", amount: "1000", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "transportation", user_id: username, name: "Bus", description: "no ndeed for that thing", amount: "305", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "transportation", user_id: username, name: "Gas", description: "no ndeed for that thing", amount: "700", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "utilities", user_id: username, name: "Bills", description: "no ndeed for that thing", amount: "650", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "utilities", user_id: username, name: "Mortgage", description: "no ndeed for that thing", amount: "2530", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "medical", user_id: username, name: "Bandaje", description: "no ndeed for that thing", amount: "540", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "savings", user_id: username, name: "dark days", description: "no ndeed for that thing", amount: "1220", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "medical", user_id: username, name: "Surgery", description: "no ndeed for that thing", amount: "2800", type_of_t: "expense", date: Time.now);
  Transaction.create(category: "savings", user_id: username, name: "hard ones", description: "no ndeed for that thing", amount: "2220", type_of_t: "expense", date: Time.now);

  Transaction.create(category: "work", user_id: username, name: "Wage", description: "no ndeed for that thing", amount: "22800", type_of_t: "income", date: Time.now);
  Transaction.create(category: "freelance", user_id: username, name: "Android app", description: "no ndeed for that thing", amount: "4300", type_of_t: "income", date: Time.now);
  Transaction.create(category: "scolarship", user_id: username, name: "Best performance", description: "no ndeed for that thing", amount: "3200", type_of_t: "income", date: Time.now);
end

