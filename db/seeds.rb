# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

HorribleFact.destroy_all

horrible_fact1 = HorribleFact.create!({ fact: "smoking causes multiple cancers", photo:"https://www.cdc.gov/cancer/tobacco/images/tobacco-use-causes-cancer.jpg" })

horrible_fact2 = HorribleFact.create!({ fact: "smoking damages your lungs", photo:"https://www.parashospitals.com/wp-content/uploads/2018/11/Scientists-Explain-What-Smoking-Every-Day-Does-To-Your-Lungs.png"})




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

Consumption.create!({user: user1, daily_actual_consumption: 65, date: Date.new(2019,10,28)})
Consumption.create!({user: user1, daily_actual_consumption: 60, date: Date.new(2019,10,29)})
Consumption.create!({user: user1, daily_actual_consumption: 59, date: Date.new(2019,10,30)})
Consumption.create!({user: user1, daily_actual_consumption: 55, date: Date.new(2019,10,31)})
Consumption.create!({user: user1, daily_actual_consumption: 55, date: Date.new(2019,11,1)})
Consumption.create!({user: user1, daily_actual_consumption: 51, date: Date.new(2019,11,2)})
Consumption.create!({user: user1, daily_actual_consumption: 55, date: Date.new(2019,11,3)})
Consumption.create!({user: user1, daily_actual_consumption: 53, date: Date.new(2019,11,4)})
Consumption.create!({user: user1, daily_actual_consumption: 47, date: Date.new(2019,11,5)})
Consumption.create!({user: user1, daily_actual_consumption: 45, date: Date.new(2019,11,6)})
Consumption.create!({user: user1, daily_actual_consumption: 46, date: Date.new(2019,11,7)})
Consumption.create!({user: user1, daily_actual_consumption: 46, date: Date.new(2019,11,8)})
Consumption.create!({user: user1, daily_actual_consumption: 43, date: Date.new(2019,11,9)})
Consumption.create!({user: user1, daily_actual_consumption: 37, date: Date.new(2019,11,10)})
Consumption.create!({user: user1, daily_actual_consumption: 38, date: Date.new(2019,11,11)})
Consumption.create!({user: user1, daily_actual_consumption: 42, date: Date.new(2019,11,12)})
Consumption.create!({user: user1, daily_actual_consumption: 37, date: Date.new(2019,11,13)})
Consumption.create!({user: user1, daily_actual_consumption: 34, date: Date.new(2019,11,14)})
Consumption.create!({user: user1, daily_actual_consumption: 25, date: Date.new(2019,11,15)})
Consumption.create!({user: user1, daily_actual_consumption: 27, date: Date.new(2019,11,16)})
Consumption.create!({user: user1, daily_actual_consumption: 38, date: Date.new(2019,11,17)})
Consumption.create!({user: user1, daily_actual_consumption: 33, date: Date.new(2019,11,18)})
Consumption.create!({user: user1, daily_actual_consumption: 32, date: Date.new(2019,11,19)})
Consumption.create!({user: user1, daily_actual_consumption: 29, date: Date.new(2019,11,20)})
Consumption.create!({user: user1, daily_actual_consumption: 23, date: Date.new(2019,11,21)})
Consumption.create!({user: user1, daily_actual_consumption: 34, date: Date.new(2019,11,22)})
Consumption.create!({user: user1, daily_actual_consumption: 45, date: Date.new(2019,11,23)})
Consumption.create!({user: user1, daily_actual_consumption: 37, date: Date.new(2019,11,24)})
Consumption.create!({user: user1, daily_actual_consumption: 28, date: Date.new(2019,11,25)})
Consumption.create!({user: user1, daily_actual_consumption: 17, date: Date.new(2019,11,26)})

Consumption.create!({user: user2, daily_actual_consumption: 65, date: Date.new(2019,11,22)})
Consumption.create!({user: user2, daily_actual_consumption: 76, date: Date.new(2019,11,23)})
Consumption.create!({user: user2, daily_actual_consumption: 87, date: Date.new(2019,11,24)})
Consumption.create!({user: user2, daily_actual_consumption: 98, date: Date.new(2019,11,25)})

puts 'Finished!'





