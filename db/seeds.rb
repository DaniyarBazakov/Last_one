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


horrible_fact1 = HorribleFact.create!({ fact: "Tobacco kills more than six million people each year, translating to one smoking-related death every five seconds", photo:"http://3.bp.blogspot.com/-2MiwsLwZkIY/VVJAtWBaErI/AAAAAAAAARk/qbNnLnGa5WU/s640/Kills%2B2.5.JPG" })

horrible_fact2 = HorribleFact.create!({ fact: "More than 480,000 Americans die each year of smoking, accounting for one of every five deaths.", photo:"https://i4w8j7y6.stackpathcdn.com/wp-content/uploads/2016/12/smoking-facts.jpg"})

horrible_fact3 = HorribleFact.create!({ fact: "On average, smoking will cut 13 years from your life expectancy. If you have HIV, that number will increase to 16 years.", photo:"https://assets.lybrate.com/q_auto:eco,f_auto,w_850/imgs/dt/tp/0fa6db461f37e745bbedebbbee653f7b/454a5ca505e518ff5365dcdad86768bc/371d61.jpg"})

horrible_fact4 = HorribleFact.create!({ fact: "Lung cancer is not the only malignancy you can get from smoking. Others include cancer of the bladder, blood, bone marrow, cervix, colon, esophagus, kidneys, larynx, liver, mouth, pancreas, rectum, stomach, and throat..", photo:"https://www.cancer.ca/~/media/cancer.ca/CW/prevention%20and%20screening/Reduce%20cancer%20risk/Make%20healthy%20choices/Live%20smoke%20free/Prev_Smoking-EN.png?h=930&w=1021&la=en"})

horrible_fact5 = HorribleFact.create!({ fact: "In addition to cancer, smoking can increase your risk of coronary heart disease and stroke by anywhere from 200 percent to 400 percent.", photo:"https://shelbytnhealth.files.wordpress.com/2015/08/thickblood.jpeg?w=828&h=414"})

horrible_fact6 = HorribleFact.create!({ fact: "There are more than 4,000 chemicals in tobacco smoke, of which more than 250 are known to be harmful, more than 50 are known to cause cancer, and 11 are classified as Group I carcinogens.", photo:"https://2.bp.blogspot.com/_X_b6po8jkSI/TFfi-VBzH9I/AAAAAAAAABk/JtxqqsKiDsM/s320/cigarette_smoke.jpeg"})

horrible_fact7 = HorribleFact.create!({ fact: "Benzene is a major cause of acute myeloid leukemia. Not surprisingly, cigarette smoke is the major source of benzene. Among smokers in the United States, 90 percent of their benzene exposure will come from cigarettes.", photo:"http://www.mysafetysign.com/img/lg/S/Benzene-Cancer-Hazard-Danger-Sign-S-0115.gif"})

horrible_fact8 = HorribleFact.create!({ fact: "Radioactive lead, polonium, and hydrogen cyanide can all be found in cigarette smoke. History buffs will recognize g as a compound used back in World War II as a genocidal agent.", photo:"https://www.thoughtco.com/thmb/cfiHKJySFnANdDk2XcABey0NAjc=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/auschwitz-prepares-for-ceremonies-commemorating-60-years-since-liberation--52066214-4227e68e59d94fddbbde9b6907e1ba24.jpg"})

horrible_fact9 = HorribleFact.create!({ fact: "Of the six million smoking-related death reported around the world each year, 890,000 (or roughly 15 percent) are the result of secondhand smoke. Despite what some may tell you, there is no safe level of exposure to secondhand smoke.", photo:"https://www.clinicalomics.com/wp-content/uploads/2019/03/secondhandSmoke-metamorworks.jpg"})

horrible_fact10 = HorribleFact.create!({ fact:"Lung cancer is largely a smoker's disease; 90% of men and 80% of women who succumb to lung cancer smoked.", photo:"https://www.arcgis.com/sharing/rest/content/items/d86484536899414bbbb7c61bad917337/resources/1567795749797.jpeg?w=1600"})

horrible_fact11 = HorribleFact.create!({ fact:"Smoking is responsible for about 1 in 5 deaths annually in the United States.", photo:"http://mediablackberry.com/wp-content/uploads/2017/07/Tobacco-kills-a-thousand-annually-696x615.jpg"})

horrible_fact12 = HorribleFact.create!({ fact:"Smoking causes 30% of cancer deaths in Canada.", photo:"https://cbsnews1.cbsistatic.com/hub/i/r/2011/09/28/915e0b88-a643-11e2-a3f0-029118418759/resize/620x465/95479c44a214a629c5d71895f89bcb59/canadasmokinglabel12.jpg"})

horrible_fact13 = HorribleFact.create!({ fact:"There is 20% of sugar in a cigarette, which leads to diabetes", photo:"https://www.seriousfacts.com/wp-content/uploads/2017/06/There-is-20-of-sugar-in-a-cigarette-which-leads-to-diabetes.jpg"})

horrible_fact14 = HorribleFact.create!({ fact:"Urea, the main ingredient in urine, is added to cigarettes to enhance their flavor.", photo:"http://notupinsmokes.nunku.org.au/wp-content/uploads/2014/06/Dog-Peeing.png"})

horrible_fact15 = HorribleFact.create!({ fact:"Smoking 20 cigarettes a day for five years would cost around $10332 US.", photo:"https://previews.123rf.com/images/kristo74/kristo741903/kristo74190300010/117960568-smoking-and-money-cost-cigarettes-wrapped-in-hundred-dollars-banknotes-isolated-on-white-background-.jpg"})

horrible_fact16 = HorribleFact.create!({ fact:"An estimated 178,030 women died every year from cigarette smoking.", photo:"https://i.ytimg.com/vi/1yMCdzjAH8Y/hqdefault.jpg"})

horrible_fact17 = HorribleFact.create!({ fact:"Even pets suffer from secondhand smoke. It can cause heart disease or even leukemia in dogs.", photo:"https://i.pinimg.com/564x/9e/50/39/9e5039d9aaf92ce7aef6ee31067ee02e.jpg"})

horrible_fact18 = HorribleFact.create!({ fact:"Smoking during pregnancy increases the chances that a baby will be born low weight but highly aggressive.", photo:"https://as1.ftcdn.net/jpg/02/45/77/88/500_F_245778831_qRdmhtLJhHJ6SfS0QbSy9h7ikdOcRy98.jpg"})

horrible_fact19 = HorribleFact.create!({ fact:"Smoking one cigarette can take 11 minutes off your life – that’s 14 days gone from smoking only 5 cigarettes a day over 1 year!", photo:"https://mediainformationliteracyabm12.files.wordpress.com/2017/08/c12b4478ce1414212145cb026555c4df-effects-of-cigarette-smoking-effects-of-smoking.jpg"})

horrible_fact20 = HorribleFact.create!({ fact:"Smoking can reduce the chances of having a baby later in life. For boys, this means having fewer sperm and problems having sex. For girls, it can mean trouble with becoming pregnant and dangers to the baby.", photo:"https://flo.health/uploads/media/sulu-1230x-inset/02/1462-shutterstock_551138986.jpg?v=1-0&inline=1"})

horrible_fact21 = HorribleFact.create!({ fact:"Smoking can cause bad breath and stained teeth, as well as gum disease, tooth loss, and damage to the sense of taste.", photo:"https://www.emergencydentistchicagoillinois.com/wp-content/uploads/2015/12/Prevent-Tooth-Loss-by-Quitting-Smoking-Habit.png"})

horrible_fact22 = HorribleFact.create!({ fact:"Smoking prematurely ages the skin by 10-20 years and makes facial wrinkling, particularly around the eyes and mouth, three times more likely.", photo:"https://i.pinimg.com/564x/6c/5f/5d/6c5f5dbdc1be58a9063a3e4279550c5d.jpg"})

horrible_fact23 = HorribleFact.create!({ fact:"Smoking makes your hair turn gray faster, a study found.", photo:"https://media.mnn.com/assets/images/2017/04/gray-hair-roots.jpg.653x0_q80_crop-smart.jpg"})

horrible_fact24 = HorribleFact.create!({ fact:"If you have been treated for tuberculosis in the past, smoking doubles your chance of getting it again.", photo:"https://seyler.ekstat.com/img/max/800/I/IZu7HbzdA3Gg7YMu-636492801769888763.jpg"})

horrible_fact25 = HorribleFact.create!({ fact:"Smoking depresses antibodies and cells in the body that are supposed to help fight off invaders.", photo:"http://www.stateoftobaccocontrol.org/assets/images/listicles/000013486345.jpg"})

horrible_fact26 = HorribleFact.create!({ fact:"Studies have shown that smoking increases the risk of osteoporosis and fractures.", photo:"https://img.xcitefun.net/users/2009/05/72338,xcitefun-xray-13.jpg"})

horrible_fact27 = HorribleFact.create!({ fact:"People who smoke are 70% more likely to suffer from hearing loss.", photo:"https://www.hearingaidcentre.in/wp-content/uploads/2016/03/HAC-Google-Plus-Say-no-to-Drugs.jpg"})

horrible_fact28 = HorribleFact.create!({ fact: "When you smoke, your body requires almost twice as much caffeine.", photo:"https://cubicletherapy.com/wp-content/uploads/2019/04/Photo-01-2317201_1280.jpg?189db0&189db0"})

horrible_fact29 = HorribleFact.create!({ fact: "Studies have shown that smoking makes you eat more.", photo:"https://preview.redd.it/k9qcdt6wo2f21.jpg?width=960&crop=smart&auto=webp&s=095a3d3f2d0a339233e9d9225530a3a1f27a4759"})

horrible_fact30 = HorribleFact.create!({ fact: "Smoking causes wounds to heal slower because it reduces blood flow to the skin.", photo:"https://www.woundsource.com/sites/default/files/styles/large/public/blogs/hand_wound.jpg?itok=MtHDzhf_"})

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

puts 'Creating one Challenge older than 7 days...'


Bet.create!({user: user1, date: Date.today - 10, amount: 9, status: "pending"})


puts 'Finished!'





