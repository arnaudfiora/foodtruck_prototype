puts "About to add some users... "

users_attributes = [
  {
    username: 'Harold',
    email: 'harold_1998@live.be',
    avatar: 'https://avatars.githubusercontent.com/harold9898',
    password: 'haroldharold'
  },
  {
    username: 'Arnaud',
    email: 'arnaudfiora@hotmail.com',
    avatar: 'https://avatars.githubusercontent.com/arnaudfiora',
    password: 'arnaudarnaud'
  },
  {
    username: 'Eloise',
    email: 'Eloise@25927.be',
    avatar: 'https://avatars.githubusercontent.com/elo29597',
    password: 'eloiseeloise'
  },
  {
    username: 'Dylan',
    email: 'Dylandifili@po.be',
    avatar: 'https://avatars.githubusercontent.com/dylandifilippo',
    password: 'dylandylan'
  }]

User.create!(users_attributes)

puts "4 users created"
 #

# ----- ADDING FOODTRUCKS ----- #
puts "About to add some foodtrucks... "

# FOODTRUCK 1
foodtruck = Foodtruck.create!(
  name: "Gio's Strada",
  description: "Gio’s Strada offers you four original 'Piaggio Ape' Foodtrucks and offers you fresh Italian dishes of quality... You have the choice: artisanal pasta in one, special panini stuffed with traditional Italian meatballs and mozzarella dishes in the other. We always travel with at least two vehicles to offer an extensive choice.",
  capacity: 25,
  price: 20,
  category: 'Italian',
  user: User.find((1..4).to_a.sample.to_i)
)
Ftphoto.create!(photo: 'https://s3-media4.fl.yelpcdn.com/bphoto/BW1fVd1W2p7H-pTL-LzA9g/o.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://s3-media4.fl.yelpcdn.com/bphoto/_KMvAKZwW0Eb4GUCEXOk1A/o.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://s3-media3.fl.yelpcdn.com/bphoto/Y8sGCnFdnePxvmcDik_AEw/o.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'http://www.giosstrada.be/images/011.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://www.chouxdebruxelles.be/wp-content/uploads/2016/08/gio-s-strada-foodtruck-traiteur-catering_06.jpg', foodtruck: foodtruck)

puts "One foodtruck added"

# FOODTRUCK 2
foodtruck = Foodtruck.create!(
  name: "Thai Street",
  description: "TOOQ TOOQ is the specialist of Thai noodles in Brussels (fried rice noodles with wok with fresh vegetables). You can taste several variants including the famous Padthai wich is the best.",
  capacity: 30,
  price: 15,
  category: 'Thai',
  user: User.find((1..4).to_a.sample.to_i)
)
Ftphoto.create!(photo: 'https://www.miamthai.com/wp-content/uploads/2016/10/THA_8119.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://media-cdn.tripadvisor.com/media/photo-s/0e/3d/11/d4/kung-pao-box.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://www.americanexpress.ch/selects/images/portraits/391_1471950368.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://blog.contentools.com/wp-content/uploads/2018/05/food-truck-team.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://ilovememphisblog.com/wp-content/uploads/2017/11/IMG_0197.jpg', foodtruck: foodtruck)

puts "One foodtruck added"

# FOODTRUCK 3

foodtruck = Foodtruck.create!(
  name: "Bagel Street",
  description: "We offer 2 versions of bagel (hot and cold). Fresh fries of the day cooked in beef fat, seasoned with various aromatic salts of your choice and accompanied by ''made in truck'' sauce.",
  capacity: 20,
  price: 18,
  category: 'American',
  user: User.find((1..4).to_a.sample.to_i)
)
Ftphoto.create!(photo: 'http://www.bagelstreet.be/wp-content/uploads/2018/04/20170610_122831.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://www.foodette.fr/files/products/bagel-saumon-fume-artisanal-aneth-roquette-petitsuisse-baierose-aveclogo-web-ok.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://cdn.static01.nicematin.com/media/npo/mobile_1440w/2016/03/32032985.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'http://www.bagelstreet.be/wp-content/themes/Bagel/images/logo.png', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://assets.kraftfoods.com/recipe_images/183286-183287.jpg', foodtruck: foodtruck)

puts "One foodtruck added"

# FOODTRUCK 4

foodtruck = Foodtruck.create!(
  name: "Sweeto Burrito",
  description: "specializing in fresh and flavourful burritos, tacos, salads & more, made from farm-fresh Belgian produce and Mexican spices. You can roll your own burrito :Fresh, fast, flavorful and made-to-order, just as you want it.",
  capacity: 30,
  price: 15,
  category: 'Mexican',
  user: User.find((1..4).to_a.sample.to_i)
)
Ftphoto.create!(photo: 'https://sweetoburrito.com/wp-content/uploads/2016/03/SweetoTrailerPretty-1030x772.png', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://www.alsothecrumbsplease.com/wp-content/uploads/2018/01/Guacamole-Beef-Burrito-4.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://pbs.twimg.com/profile_images/551186026253672448/pyKh3E3T_400x400.jpeg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://rh-vendoradmin.s3.amazonaws.com/trucks/original/16022/58f54de0-1a04-4d81-a7f4-6c8446204482.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://sweetoburrito.com/wp-content/uploads/2016/03/DSC_1511friends.png', foodtruck: foodtruck)

puts "One foodtruck added"

# FOODTRUCK 5

foodtruck = Foodtruck.create!(
  name: "Louis Pizza",
  description: "
Invite Louis with his professional mobile oven and you have the guarantee that your guests will be served delicious, real and hot pizzas. Louis has an open ear for all your wishes and helps you find the most suitable party formula.",
  capacity: 15,
  price: 15,
  category: 'Italian',
  user: User.find((1..4).to_a.sample.to_i)
)
Ftphoto.create!(photo: 'https://y-parc.ch/app/uploads/2019/05/basilico_pizzeria.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://m.bettybossi.ch/static/rezepte/x/bb_itku120801_0243a_x.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://res.cloudinary.com/leetchi/image/upload/c_fill,f_auto,fl_lossy,g_center,h_520,q_80,w_715/v1553540359/4e913be4-a03c-4ee5-8a80-7031967998d3.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://cdn.trendhunterstatic.com/thumbs/takeaway-pizza.jpeg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://www.louispizza.be/assets/images/profile_2.jpg', foodtruck: foodtruck)

puts "One foodtruck added"


# FOODTRUCK 6

foodtruck = Foodtruck.create!(
  name: "Big Wang's",
  description: "Invite Louis with his professional mobile oven and you have the guarantee that your guests will be served delicious, real and hot pizzas. Louis has an open ear for all your wishes and helps you find the most suitable party formula.",
  capacity: 30,
  price: 20,
  category: 'Chinese',
  user: User.find((1..4).to_a.sample.to_i)
)
Ftphoto.create!(photo: 'https://images.squarespace-cdn.com/content/v1/59555598d482e964f691f6a6/1516554760951-B05U5KRTLBLVZSXDMJ22/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/IMG_0201.JPG', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://images.squarespace-cdn.com/content/v1/59555598d482e964f691f6a6/1508875033613-4NP6I3ULHPSUEY3E1R7B/ke17ZwdGBToddI8pDm48kNxzzBW4YIEbelx5P07PIpt7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UcDbKvAlAhSgQG0DWqK8eP3jTIlV9DgU2lk93FL5WzWAocirJjwNwxkbauT3i3vPKg/5812B915-6368-449E-B43F-1FEAB03344E5.jpeg?format=2500w', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://images2.minutemediacdn.com/image/upload/c_crop,h_695,w_1237,x_0,y_58/f_auto,q_auto,w_1100/v1554992472/shape/mentalfloss/521724-istock-545286388.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://better.net/chicago/wp-content/uploads/sites/2/2018/08/food-trucks-la-cocinita-benoit-and-rachel-angullo.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://images.squarespace-cdn.com/content/v1/59555598d482e964f691f6a6/1508881393963-XMK0A0CBQF5RDGLM9Q9S/ke17ZwdGBToddI8pDm48kHFnmntegnVXpN4y4ldn3ixZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpxco7Gi2cI2YfBk8ZWdc_m6Xcr86dXh8TsiE3NyioNRZj9sD37Ved1vsRvl2h0UxBw/22552876_10214808293430534_8792771173948954201_n.jpg?format=750w', foodtruck: foodtruck)

puts "One foodtruck added"

# FOODTRUCK 6

foodtruck = Foodtruck.create!(
  name: "Happy Ice cream",
  description: "Happy  Ice Cream is created with this same passion. Our distinctive recipes combine rich ingredients to create mouthwatering flavors. Each flavor has been tested and refined to ensure every ice cream we shape tastes as good as possible. We have two different food trucks, both pink.",
  capacity: 50,
  price: 3,
  category: 'Ice-Cream',
  user: User.find((1..4).to_a.sample.to_i)
)
Ftphoto.create!(photo: 'https://image.made-in-china.com/2f0j00hFptDGZIOugB/5-Meter-Mobile-Ice-Cream-Fast-Food-Truck-Van-for-Sale.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://portsoyicecream.co.uk/site/wp-content/uploads/ice-cream-collection-1554x1171.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJbCBn4qFq0b3vc--H_N0L28TFW5Mvp4ARvS6OfyMTmZUw_lJZ&s', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://www.usedvending.com/image/1995-chevy-p30-ice-cream-truck-utah-diesel-engine-9229914-1j_xl.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://previews.123rf.com/images/chudtsankov/chudtsankov1407/chudtsankov140700014/30182137-happy-ice-cream-man-driving-truck.jpg', foodtruck: foodtruck)

puts "One foodtruck added"


# FOODTRUCK 8

foodtruck = Foodtruck.create!(
  name: "Sisters cupcakes",
  description: "We are two sisters with a real food truck caravan with  more than 20 different cupcakes and cheesecakes: made with a lot of love and you can taste it! We have two different foodtrucks.",
  capacity: 40,
  price: 3,
  category: 'desert',
  user: User.find((1..4).to_a.sample.to_i)
)
Ftphoto.create!(photo: 'https://bestofnj.com/wp-content/uploads/2018/04/House-of-Cupcakes_Food-Truck-e1523992752202.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://www.foodtrucksin.com/sites/default/files/Cupcake_Truck_web.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://www.foodtrucksin.com/sites/default/files/Cupcake_Truck_web.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://shop.kingarthurflour.com/item-img/207733_06_15_2018__14_31_30_456', foodtruck: foodtruck)
Ftphoto.create!(photo: 'http://www.sparkmybiz.com/wp-content/uploads/House-of-Cupcakes2.jpg', foodtruck: foodtruck)

puts "One foodtruck added"

# FOODTRUCK 9

foodtruck = Foodtruck.create!(
  name: "La charette gourmande",
  description: "We offer a varied choice of giant crepes 'sweet', pancakes Breton buckwheat 'salted' ... Everything is homemade in front of you, with products of the highest quality, 100 percent handmade.Whether it's an anniversary, a communion, a wedding, a company party, a neighborhood party, a festival ..., each event will be personalized and taken in hand by La Charrette Gourmande. Our motto: flexibility and quality to serve you!",
  capacity: 30,
  price: 5,
  category: 'desert',
  user: User.find((1..4).to_a.sample.to_i)
)
Ftphoto.create!(photo: 'https://sosoir.lesoir.be/sites/default/files/styles/image_690x460/public/encadre/g2.jpg?itok=2LI6weta', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://cac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2FCAC.2Fvar.2Fcui.2Fstorage.2Fimages.2Fevenements.2Fchandeleur-vous-allez-succomber-a-nos-recettes-de-crepes.2F3333930-2-fre-FR.2Fchandeleur-vous-allez-succomber-a-nos-recettes-de-crepes.2Ejpg/748x372/quality/80/crop-from/center/crepes-au-chocolat.jpeg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://static.lexpress.fr/medias_11307/w_1635,h_915,c_crop,x_123,y_328/w_480,h_270,c_fill,g_north/v1485531738/crepe-lardon-oeuf-fromage_5789615.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'http://www.coeurdecrepes.fr/images/gallery/fulls/Coeur_de_crepes_foodtruck_traiteur_anniversaire_mariage_galettes_evenements_soiree_burger_pancake_brunch_dejeuner_wraps_salon_cafe_32.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'http://www.coeurdecrepes.fr/images/gallery/fulls/Coeur_de_crepes_foodtruck_traiteur_anniversaire_mariage_galettes_evenements_soiree_burger_pancake_brunch_dejeuner_wraps_salon_cafe_09.jpg', foodtruck: foodtruck)

puts "One foodtruck added"

# FOODTRUCK 3

foodtruck = Foodtruck.create!(
  name: "Le vagabond",
  description: "We offer 2 versions of bagel (hot and cold). Fresh fries of the day cooked in beef fat, seasoned with various aromatic salts of your choice and accompanied by ''made in truck'' sauce.",
  capacity: 60,
  price: 22,
  category: 'American',
  user: User.find((1..4).to_a.sample.to_i)
)
Ftphoto.create!(photo: 'https://cdn-5d07e425f911d10dc8cfa42b.closte.com/wp-content/uploads/oerburger-bus-foodtruck-buiten-1-e1516205553970.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'http://laurencariscooks.com/1_lcc/wp-content/uploads/2016/08/Black-Bean-Burgers-4-600x600.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'http://www.rollingevents.nl/media/zoo/images/IMG_20150626_151821401_HDR_c0747ebee08ced8e6a0a3122c2723379.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'http://www.rollingevents.nl/images/trucks/module/teaserimage_oerburgerbus.jpg', foodtruck: foodtruck)
Ftphoto.create!(photo: 'https://www.austinchronicle.com/imager/b/original/2282275/6c88/FOOD.PlowBurger.JACK.jpg', foodtruck: foodtruck)

puts "One foodtruck added"

puts "X foodtrucks created"
