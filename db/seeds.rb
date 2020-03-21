# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: 'Allen', last_name: 'Shin', username: 'geeuho', password: 'jeeho123', password_confirmation: 'jeeho123', age: 28, diet_type: 'null', weight: 190, height: 71, email: 'geeuho@gmail.com', calorie_goal: 1800)


Weight.create(current_weight: 180, date: '2020-03-20', user_id: 1)
