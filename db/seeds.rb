# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating categories seeds"

categories = Category.create([{name: "Transports"}, {name:"Shopping"}, {name:"Food"}, {name:"Energy"}, {name:"Daily"}, {name:"Bathroom"}])

puts "Done with categories"

puts "Creating bathroom challenges"
cat = Category.all
challenges_bathroom = Challenge.create([ {name: "Make your own beauty products",
                                description: "Usage of industrial shampoos and soaps is an ecological drama,
                                              all those empty packages end up in the trash and they are not especilly good for the our bodies.",
                                steps:   "1- Buy organic products for a week,
                                           2- Let's make your own shampoo !,
                                           3- Time for the body, make your own body wash,
                                           4- Reuse empty bottles to make some more of your marvellous product!",
                                category_id: Category.find_by(name: "Bathroom").id} ,

                                {name: "Use less water !",
                                description: "Water is an element of life. It is the 'blue gold' as some call it. 800 millions of people do not have access to drinkable water, and it is 70 purcent of the surface of the earth!",
                                steps:     "1- Try to take your shower in three minutes.,
                                            2- Put a timer to manage your time spend in the shower. Here's a good tip: Sing a three minute song!,
                                            3- Don't flush each time you go to the loo. Try to keep a big bottle of water next to it, and poor it in the toilet instead of flushing, which uses a enormous quantity of water each time.,
                                            4- When you wash your hands, turn off the tap!,
                                            5- Same goes for when you are doing the dishes!",
                                category_id: Category.find_by(name: "Bathroom").id}])

puts "Done with bathroom"

puts "Creating transports challenges"
challenges_transportation = Challenge.create([{name: "Stay away from your car!",
                                            description: "As you well know, the emissions of CO2 of your car is a real problem nowadays, time to help our planet recover from all those years of pollution.",
                                            steps:   "1- Your bike has been in the garage for for years with no use ? Fix it !,
                                                      2- Take your bike or the bus one day this week to go to work.
                                                      3- Now let's make it three times a week !,
                                                      4- By that stage, you should only use your car for grocery shopping!",
                                            category_id: Category.find_by(name: "Transports").id},

                                              {name: "Eco-travel",
                                              description: "The fastest way to travel is usually the worst for the environment. As you should take your bike to go to work, it is preferable to take your car than a plane!",
                                              steps: ["1- When thinking of your next vacations, try to take the train instead of a fast travel, big CO2 emissions plane.,
                                                      2- When staying away from your home, try to find some locals accomodations that care about the environment. Search and find, my friend.,
                                                      3- Don't buy unnecessary souvenirs, try to find something local and eco-friendly instead !,
                                                      4- Finally, only take what you need, the less you have to move, the less is your carbon foorprint!"],
                                              category_id: Category.find_by(name: "Transports").id}])

puts "Done with transports"

puts "Creating lifestyle challenges"
challenges_lifestyle = Challenge.create([{name: "Bye bye plastic bags",
                                        description: "We are all by now aware of the disastrous usage of plastic bags. Let's get rid of them!",
                                        steps:  "1- Buy some reusable grocery bags, preferably in fabric.,
                                                  2- If you forgot them, buy at the register reusable pastic bags.,
                                                  3- For your fruits and vegetables, get also some fabric baggies instead of using the disposable ones !,
                                                  4- If you are travelling, don't use plastic bags, the fabric ones will do the job perfectly !",
                                        category_id: Category.find_by(name: "Daily").id},

                                        {name: "Clean your house using natural products",
                                        description: "Cleaning products contain some chemicals that are bad for our health, but also for the environment. Let's see what we can do about it !",
                                        steps: "1- Create your own cleaning products using white vinegar, baking soda, lemon and salt. And that's it ! Easy right ?",
                                        category_id: Category.find_by(name: "Daily").id},

                                        {name: "Get definitely rid of plastic",
                                        description: "Plastic is bad for the environment and is also really dangerous for your health. Let's try to put an end our crazy use of plastic.",
                                        steps: "1- Stop using plastic-bottled water. Try to get a glass or inox one that you refill when needed.,
                                                2- Start purchasing in bulk or concentrate !,
                                                3- Get rid of plastics bags when doing your groceries.",
                                        category_id: Category.find_by(name: "Daily").id},

                                        {name: "Healing with nature",
                                        description: "Modern medicine is all about labs. When rejecting the drugs, they pollute the soil, the water and the air. It is everywhere. Not so eco-friendly right?",
                                        steps: "1- Use essential oils! 9 out of 10 times they will do the job perfectly.,
                                                2- Try to get better use natural medecines like acupunture or homeopathy.",
                                        category_id: Category.find_by(name: "Daily").id }])

puts "Done with lifestyle"

puts "Creating food challenges"
challenges_food = Challenge.create([{name: "Decrease additives",
                                    description: "A lot of the food we buy in supermarkets are filled with nocive additives, demanding in production usage of non-ecological resources.",
                                    steps: "1- Buy in local bio stores,
                                            2- Cook more at home !",
                                    category_id: Category.find_by(name: "Food").id},

                                    {name: "Eating locally and with the seasons",
                                    description: "You might wonder why eating with the seasons is a way to reduce your carbon foorprint. Well, to grow a strawberry in january by example demands chemicals fertilizers or you could buy imported products. You guessed right, that's no good for you or the environment. Let's see what we can do about it.",
                                    steps: "1- Buy fruits and vegetables according to the season.,
                                            2- Try to check, when in the process of buying something, where it comes from and do not purchase it if it comes from far away!",
                                    category_id: Category.find_by(name: "Food").id},

                                    {name: "Grow your own vegetable garden",
                                    description: "A lot a vegetables are easily grownable in your backyard, or even your balcony! That way, you'll make sure of the provenance of the things you eat!",
                                    steps: "1- Grow the vegetables of your choice on your balcony or in your backyard!",
                                    category_id: Category.find_by(name: "Food").id}])

puts "Done with food"

puts "Creating energy challenges"
challenges_energy = Challenge.create([{name:"Light me up",
                                      description: "Electricity is also a domain where you can imporove your ecological skills! Try these following steps to reduce your carbon footprint on this beloved earth.",
                                      steps: "1- Change your light bulbs! Replace your incandescent lightbulbs with Energy Star-certified LED bulbs.,
                                              2- Keep lights, electronics, and appliances turned off when not using them.",
                                      category_id: Category.find_by(name: "Energy").id},

                                      {name: "Hot'n'cold",
                                      description: "Heating or cooling your place represents a big part of your imprint on the planet.",
                                      steps: "1- Naturally heat and cool your house, office, or dorm room by opening or closing your windows, curtains, and blinds, and by using fans.,
                                              2- Adjust your thermostat down 2 degrees from usual when you use the heat, and up 2 degrees when you use air conditioning,
                                              3-replace manual thermostats with programmable ones.",
                                      category_id: Category.find_by(name: "Energy").id}])
puts "Done with energy"























