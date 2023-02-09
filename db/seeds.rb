# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

d1 = City.create(city_name:'Paris')
d2 = City.create(city_name:'Marseille')
d3 = City.create(city_name:'Lyon')

a1 = Dog.create(name:'Labrador', city: d1)
a2 = Dog.create(name:'Boxer', city: d2)
a3 = Dog.create(name:'Bulldog', city: d3)

b1 = Dogsitter.create(name:'Thomas',city: d1)
b2 = Dogsitter.create(name:'Alec',city: d2)
b3 = Dogsitter.create(name:'Clément',city: d3)

c1 = Stroll.create(dog: a1, dogsitter:b1)
c1 = Stroll.create(dog: a2, dogsitter:b2)
c1 = Stroll.create(dog: a3, dogsitter:b3)

City.all[0].dogs[0].name
City.all[2].dogsitter[0].name
City.all[1].dogsitter[0].name
