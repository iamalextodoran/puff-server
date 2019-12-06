# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a1 = Transaction.create(category: "food", user_id: "20", name: "lapte", description: "no ndeed for that thing", amount: "1300", type_of_t: "expense");
a2 = Transaction.create(category: "food", user_id: "20", name: "oo", description: "no ndeed for that thing", amount: "300", type_of_t: "expense");
a3 = Transaction.create(category: "food", user_id: "20", name: "mere", description: "no ndeed for that thing", amount: "324", type_of_t: "expense");
a4 = Transaction.create(category: "beverage", user_id: "20", name: "bere", description: "no ndeed for that thing", amount: "100", type_of_t: "expense");
a5 = Transaction.create(category: "beverage", user_id: "20", name: "apa", description: "no ndeed for that thing", amount: "20", type_of_t: "expense");
a6 = Transaction.create(category: "beverage", user_id: "20", name: "suc", description: "no ndeed for that thing", amount: "30", type_of_t: "expense");
a7 = Transaction.create(category: "savings", user_id: "20", name: "hawaii", description: "no ndeed for that thing", amount: "540", type_of_t: "income");
a8 = Transaction.create(category: "savings", user_id: "20", name: "hawaii", description: "no ndeed for that thing", amount: "3220", type_of_t: "income");