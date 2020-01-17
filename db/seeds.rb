# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Transaction.create(category: "food", user_id: 45, name: "Milk", description: "no ndeed for that thing", amount: "1300", type_of_t: "expense");
Transaction.create(category: "food", user_id: 45, name: "Cheese", description: "no ndeed for that thing", amount: "300", type_of_t: "expense");
Transaction.create(category: "savings", user_id: 45, name: "Save some", description: "no ndeed for that thing", amount: "3020", type_of_t: "expense");
Transaction.create(category: "savings", user_id: 45, name: "Hard times", description: "no ndeed for that thing", amount: "3600", type_of_t: "expense");
Transaction.create(category: "travel", user_id: 45, name: "Greece", description: "no ndeed for that thing", amount: "1000", type_of_t: "expense");
Transaction.create(category: "travel", user_id: 45, name: "France", description: "no ndeed for that thing", amount: "1000", type_of_t: "expense");
Transaction.create(category: "transportation", user_id: 45, name: "Bus", description: "no ndeed for that thing", amount: "305", type_of_t: "expense");
Transaction.create(category: "transportation", user_id: 45, name: "Gas", description: "no ndeed for that thing", amount: "700", type_of_t: "expense");
Transaction.create(category: "utilities", user_id: 45, name: "Bills", description: "no ndeed for that thing", amount: "650", type_of_t: "expense");
Transaction.create(category: "utilities", user_id: 45, name: "Mortgage", description: "no ndeed for that thing", amount: "3530", type_of_t: "expense");
Transaction.create(category: "medical", user_id: 45, name: "Bandaje", description: "no ndeed for that thing", amount: "540", type_of_t: "expense");
Transaction.create(category: "savings", user_id: 45, name: "dark days", description: "no ndeed for that thing", amount: "3220", type_of_t: "expense");
Transaction.create(category: "medical", user_id: 45, name: "Surgery", description: "no ndeed for that thing", amount: "5800", type_of_t: "expense");
Transaction.create(category: "savings", user_id: 45, name: "hard ones", description: "no ndeed for that thing", amount: "3220", type_of_t: "expense");

Transaction.create(category: "work", user_id: 45, name: "Wage", description: "no ndeed for that thing", amount: "12800", type_of_t: "income");
Transaction.create(category: "freelance", user_id: 45, name: "Android app", description: "no ndeed for that thing", amount: "3800", type_of_t: "income");
Transaction.create(category: "scolarship", user_id: 45, name: "Best performance", description: "no ndeed for that thing", amount: "1800", type_of_t: "income");