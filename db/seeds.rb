# ----- ADDING USERS ----- #
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
# ------------------------------ #

# ----- ADDING FOODTRUCKS ----- #
puts "About to add some foodtrucks... "

# FOODTRUCK 1
foodtruck = Foodtruck.create!(
  name: "Gio's Strada",
  description: "Gio's Strada met à votre disposition quatre Foodtrucks 'Piaggio Ape' originaux et vous propose des plats italiens frais spécifiques de qualité... Vous avez le choix : pâtes artisanales dans l'un, panini particuliers fourrés aux boulettes traditionnelles italiennes et des plats à la mozzarella dans l'autre. Nous nous déplaçons toujours avec au moins deux véhicules pour proposer un choix étendu.",
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

# REPEAT WITH OTHER FOODTRUCKS

puts "X foodtrucks created"
