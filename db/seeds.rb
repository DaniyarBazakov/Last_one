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
HorribleFact.destroy_all


horrible_fact1 = HorribleFact.create!({ fact: "Smoking causes multiple cancers", photo:"https://www.cdc.gov/cancer/tobacco/images/tobacco-use-causes-cancer.jpg" })

horrible_fact2 = HorribleFact.create!({ fact: "Smoking damages your lungs", photo:"https://www.parashospitals.com/wp-content/uploads/2018/11/Scientists-Explain-What-Smoking-Every-Day-Does-To-Your-Lungs.png"})

horrible_fact3 = HorribleFact.create!({ fact: "On average, the life expectancy of a smoker is 10 years less than a nonsmoker.", photo:"http://www.vancouversun.com/health/cms/binary/4041076.jpg?size=640x420"})

horrible_fact4 = HorribleFact.create!({ fact: "Smoking causes cancer, heart disease, stroke, diabetes and lung diseases.", photo:"https://previews.123rf.com/images/lightwise/lightwise1608/lightwise160800020/60688204-smoking-death-and-danger-concept-as-a-cigarette-burning-with-people-falling-and-escaping-the-hot-bur.jpg"})

horrible_fact5 = HorribleFact.create!({ fact: "Smoking is responsible for about 1 in 5 deaths annually in the United States.", photo:"https://miro.medium.com/max/3840/1*PVONOOaXtK6ceyKU_dBg8w.jpeg"})

horrible_fact6 = HorribleFact.create!({ fact: "Smoking KILLS", photo:"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d56be209-81cb-429f-912e-f53675ef4957/d3ccuf0-1b83ed83-2959-4def-9411-99a1196eca1d.jpg/v1/fill/w_900,h_1125,q_75,strp/smoking_kills_by_bullmoose1912_d3ccuf0-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTEyNSIsInBhdGgiOiJcL2ZcL2Q1NmJlMjA5LTgxY2ItNDI5Zi05MTJlLWY1MzY3NWVmNDk1N1wvZDNjY3VmMC0xYjgzZWQ4My0yOTU5LTRkZWYtOTQxMS05OWExMTk2ZWNhMWQuanBnIiwid2lkdGgiOiI8PTkwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.6orRGncsfbeUfjSgspMHs6G9uQdpKhpUcjgKTxf5IaE"})

horrible_fact7 = HorribleFact.create!({ fact: "Smoking kills you slowly", photo:"https://hdwallpapers.imgix.net/freestockphotos-36571556900074fd0m5oourb.jpg?auto=compress&cs=tinysrgb&dpr=1"})

horrible_fact8 = HorribleFact.create!({ fact: "This is what dying of lung cancer looks like", photo:"https://i.ytimg.com/vi/xEDpJTTDZP8/hqdefault.jpg"})

horrible_fact9 = HorribleFact.create!({ fact: "On average, smoking will cut 13 years from your life expectancy", photo:"http://3.bp.blogspot.com/-M7z-7ffGtqI/TfkfXl8VwZI/AAAAAAAAAAw/pFXN4y0Sz20/s1600/Anti_Smoking_Ads_43%255B1%255D.jpg"})



puts 'Creating users...'
user1 = User.create!({email: 'user1@gmail.com', password: "philippe"})
user2 = User.create!({email: 'user2@gmail.com', password: "philippe"})


puts 'Creating consumptions...'
# Previously : Consumption.create!({user: user1, daily_actual_consumption: 60, date: Date.new(2019,10,28)})

i = 60

until i == 55
Consumption.create!({user: user1, consumption_before_last_one: 60, daily_actual_consumption: Random.new.rand(44..49), date: Date.today - i})
i -= 1
end

until i == 50
Consumption.create!({user: user1, daily_actual_consumption: Random.new.rand(42..47), date: Date.today - i})
i -= 1
end

until i == 45
Consumption.create!({user: user1, daily_actual_consumption: Random.new.rand(40..45), date: Date.today - i})
i -= 1
end

until i == 40
Consumption.create!({user: user1, daily_actual_consumption: Random.new.rand(38..43), date: Date.today - i})
i -= 1
end

until i == 35
Consumption.create!({user: user1, daily_actual_consumption: Random.new.rand(36..41), date: Date.today - i})
i -= 1
end

until i == 30
Consumption.create!({user: user1, daily_actual_consumption: Random.new.rand(34..39), date: Date.today - i})
i -= 1
end

until i == 25
Consumption.create!({user: user1, daily_actual_consumption: Random.new.rand(32..37), date: Date.today - i})
i -= 1
end

until i == 20
Consumption.create!({user: user1, daily_actual_consumption: Random.new.rand(30..35), date: Date.today - i})
i -= 1
end

until i == 15
Consumption.create!({user: user1, daily_actual_consumption: Random.new.rand(28..33), date: Date.today - i})
i -= 1
end

until i == 10
Consumption.create!({user: user1, daily_actual_consumption: Random.new.rand(26..31), date: Date.today - i})
i -= 1
end

until i == 5
Consumption.create!({user: user1, daily_actual_consumption: Random.new.rand(24..29), date: Date.today - i})
i -= 1
end

until i == 0
Consumption.create!({user: user1, daily_actual_consumption: Random.new.rand(23...24), date: Date.today - i})
i -= 1
end


puts 'Finished!'





