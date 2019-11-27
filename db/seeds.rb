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