# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Challenge.destroy_all

puts "Creating categories seeds"

categories = Category.create([{name: "Transports"}, {name:"Shopping"}, {name:"Food"}, {name:"Energy"}, {name:"Daily"}, {name:"Bathroom"}])

puts "Done with categories"

puts "Creating bathroom challenges"
cat = Category.all
challenges_bathroom = Challenge.create([{name: "Make your own beauty products",
                                description: "Usage of industrial shampoos and soaps is an ecological drama,
                                              all those empty packages end up in the trash and they are not especilly good for the our bodies.",
                                steps:   "1- Buy organic products for a week;2- Let's make your own shampoo !;3- Time for the body, make your own body wash;4- Reuse empty bottles to make some more of your marvellous product!",


                                image: "homemade-p.jpg",

                                points: [100, 200, 300, 400, 500].sample,
                                category_id: Category.find_by(name: "Bathroom").id},


                                {name: "Use less water !",
                                description: "Water is an element of life. It is the 'blue gold' as some call it. 800 millions of people do not have access to drinkable water, and it is 70 purcent of the surface of the earth!",
                                steps:     "1- Try to take your shower in three minutes.;2- Put a timer to manage your time spend in the shower. Here's a good tip: Sing a three minute song!;3- Don't flush each time you go to the loo. Try to keep a big bottle of water next to it, and poor it in the toilet instead of flushing, which uses a enormous quantity of water each time.;4- When you wash your hands, turn off the tap!;5- Same goes for when you are doing the dishes!",


                                image: "shower.jpg",


                                points: [100, 200, 300, 400, 500].sample,
                                category_id: Category.find_by(name: "Bathroom").id}])


puts "Done with bathroom"

puts "Creating transports challenges"
challenges_transportation = Challenge.create([{name: "Stay away from your car!",



                                              description: "As you well know, the emissions of CO2 of your car is a real problem nowadays, time to help our planet recover from all those years of pollution.",
                                              steps:   "1- Your bike has been in the garage for for years with no use ? Fix it !;2- Take your bike or the bus one day this week to go to work;3- Now let's make it three times a week !;4- By that stage, you should only use your car for grocery shopping!",
                                              points: [100, 200, 300, 400, 500].sample,
                                              category_id: Category.find_by(name: "Transports").id,
                                              image: "transport2.jpg"},


                                              {name: "Eco-travel",
                                              description: "The fastest way to travel is usually the worst for the environment. As you should take your bike to go to work, it is preferable to take your car than a plane!",
                                              steps: ["1- When thinking of your next vacations, try to take the train instead of a fast travel, big CO2 emissions plane.;2- When staying away from your home, try to find some locals accomodations that care about the environment. Search and find, my friend.;3- Don't buy unnecessary souvenirs, try to find something local and eco-friendly instead !;4- Finally, only take what you need, the less you have to move, the less is your carbon foorprint!"],


                                              image: "transport1.jpg",

                                              points: [100, 200, 300, 400, 500].sample,
                                              category_id: Category.find_by(name: "Transports").id}])


puts "Done with transports"

puts "Creating lifestyle challenges"
challenges_lifestyle = Challenge.create([{name: "Bye bye plastic bags",
                                        description: "We are all by now aware of the disastrous usage of plastic bags. Let's get rid of them!",
                                        steps:  "1- Buy some reusable grocery bags, preferably in fabric.;2- If you forgot them, buy at the register reusable pastic bags.;3- For your fruits and vegetables, get also some fabric baggies instead of using the disposable ones !;4- If you are travelling, don't use plastic bags, the fabric ones will do the job perfectly !",


                                        image: "ecolo.jpg",

                                        points: [100, 200, 300, 400, 500].sample,
                                        category_id: Category.find_by(name: "Daily").id},


                                        {name: "Clean your house using natural products",
                                        description: "Cleaning products contain some chemicals that are bad for our health, but also for the environment. Let's see what we can do about it !",
                                        steps: "1- Create your own cleaning products using white vinegar, baking soda, lemon and salt. And that's it ! Easy right ?",


                                        image: "main.jpg",

                                        points: [100, 200, 300, 400, 500].sample,
                                        category_id: Category.find_by(name: "Daily").id},


                                        {name: "Get definitely rid of plastic",
                                        description: "Plastic is bad for the environment and is also really dangerous for your health. Let's try to put an end our crazy use of plastic.",
                                        steps: "1- Stop using plastic-bottled water. Try to get a glass or inox one that you refill when needed.;2- Start purchasing in bulk or concentrate !;3- Get rid of plastics bags when doing your groceries.",


                                        image: "bouteille-jaune.jpg",

                                        points: [100, 200, 300, 400, 500].sample,
                                        category_id: Category.find_by(name: "Daily").id},


                                        {name: "Healing with nature",
                                        description: "Modern medicine is all about labs. When rejecting the drugs, they pollute the soil, the water and the air. It is everywhere. Not so eco-friendly right?",
                                        steps: "1- Use essential oils! 9 out of 10 times they will do the job perfectly.;2- Try to get better use natural medecines like acupunture or homeopathy.",


                                        image: "tip-nature.jpg",

                                        points: [100, 200, 300, 400, 500].sample,
                                        category_id: Category.find_by(name: "Daily").id }])


puts "Done with lifestyle"

puts "Creating food challenges"
challenges_food = Challenge.create([{name: "Decrease additives",
                                    description: "A lot of the food we buy in supermarkets are filled with nocive additives, demanding in production usage of non-ecological resources.",
                                    steps: "1- Buy in local bio stores;2- Cook more at home !",


                                    image: "radish.jpg",

                                    points: [100, 200, 300, 400, 500].sample,
                                    category_id: Category.find_by(name: "Food").id},


                                    {name: "Eating locally and with the seasons",
                                    description: "You might wonder why eating with the seasons is a way to reduce your carbon foorprint. Well, to grow a strawberry in january by example demands chemicals fertilizers or you could buy imported products. You guessed right, that's no good for you or the environment. Let's see what we can do about it.",
                                    steps: "1- Buy fruits and vegetables according to the season.;2- Try to check, when in the process of buying something, where it comes from and do not purchase it if it comes from far away!",


                                    image: "etales.jpg",

                                    points: [100, 200, 300, 400, 500].sample,
                                    category_id: Category.find_by(name: "Food").id},


                                    {name: "Grow your own vegetable garden",
                                    description: "A lot a vegetables are easily grownable in your backyard, or even your balcony! That way, you'll make sure of the provenance of the things you eat!",
                                    steps: "1- Grow the vegetables of your choice on your balcony or in your backyard!",


                                    image: "plantation.jpg",

                                    points: [100, 200, 300, 400, 500].sample,
                                    category_id: Category.find_by(name: "Food").id}])


puts "Done with food"

puts "Creating energy challenges"
challenges_energy = Challenge.create([{name:"Light me up",
                                      description: "Electricity is also a domain where you can imporove your ecological skills! Try these following steps to reduce your carbon footprint on this beloved earth.",
                                      steps: "1- Change your light bulbs! Replace your incandescent lightbulbs with Energy Star-certified LED bulbs.;2- Keep lights, electronics, and appliances turned off when not using them.",


                                      image: "ampoule.jpg",

                                      points: [100, 200, 300, 400, 500].sample,
                                      category_id: Category.find_by(name: "Energy").id},


                                      {name: "Hot'n'cold",
                                      description: "Heating or cooling your place represents a big part of your imprint on the planet.",
                                      steps: "1- Naturally heat and cool your house, office, or dorm room by opening or closing your windows, curtains, and blinds, and by using fans.;2- Adjust your thermostat down 2 degrees from usual when you use the heat, and up 2 degrees when you use air conditioning.;3-replace manual thermostats with programmable ones.",


                                      image: "eolienne2.jpg",

                                      points: [100, 200, 300, 400, 500].sample,
                                      category_id: Category.find_by(name: "Energy").id}])

puts "Done with energy"

puts "Creating tips"
puts "Creating lifestyle tips"
tip_lifestyle = Tip.create ([
        {title: "Don't forget to drink",
        description: "Plastic is has been. It's time to think about carying your own bottle with you. But that also means that you to think about cleaning it. Here are all our tips to have a clean bottle all the time",
        category_id: Category.find_by(name: "Daily").id,
        image:"daily"},

        {title: "Never without my bag",
        description: "How many times did end up at the end of your groceries to realize that you have, once again, forgottent the bags...
        Well where a way of never forgotting this bag again",
        category_id: Category.find_by(name: "Daily").id,
        image:"plastic-bag"},

        {title: "The R Story Continues",
        description: "Reduce, reuse, recycle does not only apply to the kitchen.
                      The bathroom cries out for a change in perspective and some out-of-the-bottle thinking on eco-friendly hygiene and products.
                      In the bathroom, we actively consume the most energy and expel the most waste.
                      From modern plumbing to ventilation, hair dryers, razors, and hot showers, there’s an ecological price to pay for convenience.
                      Do you really need to throw away that bathroom suite and replace it with a new one or would some new tiles and paint give the room a whole new look? Vintage is in fashion and some antique shelving or tiles may cost less and add a unique flavor to the whole room.
                      Next time you’re out shopping for shower curtains, take a look at what they are made of.
                      There are plenty of great looking shower curtains that use organic cotton, hemp or even bamboo to create a green look that is chic.
                      Don’t just look for green materials for the shower curtain.
                      There are plenty of choices for bath mats, trash cans, and toothbrush holders as well.",
        category_id: Category.find_by(name: "Daily").id,
        image:"bottle"},

        {title: "What is ecology ?",
        description: "Ecology is the study of interactions among living things and their environment. It provides new understanding of these vital systems as they are now, and how they may change in the future.",
        category_id: Category.find_by(name: "Daily").id,
        image:"nature"}

])
puts "Done with lifestyle"

puts "Creating bathroom tips"
tip_bathroom = Tip.create ([
        {title: "Byebye cotton",
        description: "Do you know how many cotton pads are thrown away each day? Millions. And now it's time to stop and do something else, something not only good for the planet, but surely for yourself too. And that's change for sustainable pads.
                These pads can be used for removinig makeup, putting on lotion and even cleaning our baby. Easy to clean in there container bag",
        category_id: Category.find_by(name: "Bathroom").id,
        image:"bathroom"},

        {title: "Paper-less Automatic Toilet",
        description: "The Toto toilet from Japan is a true marvel. The dual flush system is efficient and Toto also completely eliminates the need for toilet paper! To top it off, it may just save a virgin rainforest in the process.
                      As one of the biggest waste products in the world, toilet paper (which is made from trees!) is sent on its way to contaminate the underground water systems.
                      98 purcent of all toilet paper sold in the United States is harvested from untouched forests.
                      Modern convenience also perpetuates the demand for ‘soft’ new paper instead of using recycled paper.
                      Instead of toilet paper, the Toto uses a small wand to expel gentle, tiny water bubbles while a click of a button starts the dryer to finish the job.
                      It is fresher and cleaner, plus you can continue to browse your smartphone or read your magazine while it does its thing.
                      Here's a tip : Invest in a gadget like the Drop-A Brick, which you pop into the tank. Some water companies even give these types of devices away, free of charge.",
        category_id: Category.find_by(name: "Bathroom").id,
        image:"toilet"}





])

puts "Creating food tips"
tip_food = Tip.create ([
        {title: "Localove - eating locally",
        description: "If your main goal is to make the food you eat as eco-friendly as possible, eating local isn’t the only way to do it – or even the best way. Food’s biggest impact on the environment isn’t the energy used to ship it from the farm to the store – it’s the energy, water, and chemicals used to produce it. So if you want to make your diet greener, other strategies – such as eating organic, becoming a vegetarian, or just cutting back on meat and dairy – can probably have a bigger impact than focusing on how far your food has traveled.",
        category_id: Category.find_by(name: "Food").id,
        image:"market"},

        {title: "What is eating local ?",
        description: "The primary reason why eating local is good for the planet is the reduction in energy resources required for transport and storage. Generally, the further a food has travelled from “paddock to plate”, the greater its impact on the environment. This is because of fuel used in transport and increased greenhouse gas emissions used for refrigerated storage.
                      The mode of transport matters too. Transporting food by air generates 177 times more greenhouse gases than shipping it.
                      The global food system lets us eat food from all over the world, all year round. But food miles impact adversely on the nutritional quality of fresh foods, and on the environment.
                      Yet while eating foods grown close to where we live makes planetary sense, farmers markets and foods grown more sustainably (organically) often carry a price premium, and seem to be targeted to a trendy and wealthy demographic.
                      The lack of a definition of “eating locally” also raises questions of how to incorporate organic and fair trade produce within the larger sustainability movement, and how to support developing nations.
                      Global supply chains place great demands on ecosystems and natural resources, and large distances between where food is produced and consumed is often seen as evidence of an unsustainable food system. However, this is not always as straightforward as it appears.
                      Take the case of seafood. Australia is in the enviable position of having been ranked in the top five countries for fisheries management and the majority of commercial fish stocks in Australia are assessed as sustainable.
                      However, 72 per cent of seafood consumed in Australia is imported. Surprisingly, there is little difference between the carbon footprint of meals made using imported seafood compared with those of three domestic wild-caught fish.",
        category_id: Category.find_by(name: "Food").id,
        image:"market2"},

        {title: "Keep you safe",
        description: "Eating locally is generally safer, according to the Center for a New American Dream (CNAD). Small farms can grow more variety, which does wonders to protect biodiversity and ultimately, long-term food security. Also, small farms are usually less brazen with their pesticides. Locally-grown food generally contains less chemicals, even if it’s not organic, because these foods are grown in such a smaller-size batch than big companies. Smaller farms and businesses don’t need to put as much time in effort into concerns such as packaging issues, shipping issues, and even longevity. The main focus, instead, is growing and distributing the product. No-fuss and better all-around!",
        category_id: Category.find_by(name: "Food").id,
        image:"keepsafe"},

        {title: "Are local foods more nutritious?",
        description: "There are several factors that influence the nutritive value of produce including crop variety, how it's grown, ripeness at harvest, storage, processing and packaging. Its vitamin and mineral content depends on the practices of people all along the line, from the seed to the table, whether or not produce is local or transported from a distance.
                      Produce such as broccoli, green beans, kale, red peppers, tomatoes, apricots and peaches are susceptible to nutrient loss when harvested and transported from longer distances, while those that are heartier such as apples, oranges, grapefruit and carrots keep their nutrients even if they travel long distances.
                      To learn more on the topic, please consult this great reference by Harvard Medical School entitled Healthy and Sustainable Food.",
        category_id: Category.find_by(name: "Food").id,
        image:"radish"}

])
puts "Done with food"

puts "Done with tips"



















