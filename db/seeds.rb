# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts 'Cleaning database...'
User.destroy_all
Consumption.destroy_all

puts 'Creating users...'
user1 = User.create!({email: 'user1@gmail.com', password: "philippe"})
user2 = User.create!({email: 'user2@gmail.com', password: "philippe"})
# User.create!({email: 'user3@gmail.com', password: "philippe"})
# User.create!({email: 'user4@gmail.com', password: "philippe"})
# User.create!({email: 'user5@gmail.com', password: "philippe"})


puts 'Creating consumptions...'
Consumption.create!({user: user1, daily_actual_consumption: 67, date: Date.new(2019,11,25)})
Consumption.create!({user: user1, daily_actual_consumption: 56, date: Date.new(2019,11,24)})
Consumption.create!({user: user1, daily_actual_consumption: 45, date: Date.new(2019,11,23)})
Consumption.create!({user: user1, daily_actual_consumption: 34, date: Date.new(2019,11,22)})
Consumption.create!({user: user1, daily_actual_consumption: 23, date: Date.new(2019,11,21)})
Consumption.create!({user: user2, daily_actual_consumption: 98, date: Date.new(2019,11,25)})
Consumption.create!({user: user2, daily_actual_consumption: 87, date: Date.new(2019,11,24)})
Consumption.create!({user: user2, daily_actual_consumption: 76, date: Date.new(2019,11,23)})
Consumption.create!({user: user2, daily_actual_consumption: 65, date: Date.new(2019,11,22)})

puts 'Finished!'







