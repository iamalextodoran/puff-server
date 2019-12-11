# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(full_name: "Alex Todoran", picture: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&s=74daec1914d1d105202bca8a310a6a71");
u2 = User.create(full_name: "Munte Vlad", picture: "https://images-na.ssl-images-amazon.com/images/M/MV5BNTk2OGU4NzktODhhOC00Nzc2LWIyNzYtOWViMjljZGFiNTMxXkEyXkFqcGdeQXVyMTE1NTQwOTk@._V1_UY256_CR12,0,172,256_AL_.jpg");
u3 = User.create(full_name: "David Bautista", picture: "https://pbs.twimg.com/profile_images/1000050491970260993/FJkauyEa.jpg");
u4 = User.create(full_name: "Alex Todoran", picture: "https://tinyfac.es/data/avatars/AEF44435-B547-4B84-A2AE-887DFAEE6DDF-200w.jpeg");

a1 = Transaction.create(category: "food", user: u1, name: "lapte", description: "no ndeed for that thing", amount: "1300", type_of_t: "expense");
a2 = Transaction.create(category: "food", user: u3, name: "oo", description: "no ndeed for that thing", amount: "300", type_of_t: "expense");
a3 = Transaction.create(category: "savings", user: u3, name: "mere", description: "no ndeed for that thing", amount: "324", type_of_t: "expense");
a4 = Transaction.create(category: "travel", user: u3, name: "bere", description: "no ndeed for that thing", amount: "100", type_of_t: "expense");
a5 = Transaction.create(category: "transportation", user: u3, name: "apa", description: "no ndeed for that thing", amount: "20", type_of_t: "expense");
a6 = Transaction.create(category: "utilities", user: u3, name: "suc", description: "no ndeed for that thing", amount: "30", type_of_t: "expense");
a7 = Transaction.create(category: "medical", user: u3, name: "hawaii", description: "no ndeed for that thing", amount: "540", type_of_t: "income");
a8 = Transaction.create(category: "savings", user: u3, name: "hawaii", description: "no ndeed for that thing", amount: "3220", type_of_t: "income");

