# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Gonna create some foodtrucks"

foodtruck_attributes = [
  {
    name:         'FastfoodCar',
    capacity: 10,
    price: 20,
    category: 'french fries',
    user: User.find(1),
    picture:"http://smaakkaravaan.nl/wp-content/uploads/2018/09/Saps-foodtruck.jpg"

  },
  {
    name:         'healthy fresh food',
    capacity: 20,
    price: 50,
    category: 'salad',
    user: User.find(1),
    picture:"https://www.agencecru.fr/wp-content/uploads/2018/04/foodtruck.jpg"

  }
]
Foodtruck.create!(foodtruck_attributes)
p "Some foodtrucks created"
