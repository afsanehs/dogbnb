# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "starting seeds"

paris  = City.create!(city_name: "Paris")
nice = City.create!(city_name: "Nice")
nantes = City.create!(city_name: "Nantes")
lyon = City.create!(city_name: "Lyon")

steeve = Dog.create!(dog_name: "Steeve", city: paris)
doudou = Dog.create!(dog_name: "Doudou", city: nice)
tomate = Dog.create!(dog_name: "Tomate", city: nice)
snoopy = Dog.create!(dog_name: "Snoopy", city: nantes)
fanta = Dog.create!(dog_name: "Fanta", city: lyon)

jacques = Dogsitter.create!(first_name: "Jacques", last_name: "Olive", city: paris)
josé = Dogsitter.create!(first_name: "José", last_name: "Steven", city: nice)
marianne = Dogsitter.create!(first_name: "Marianne", last_name: "Machin", city: paris)
julie = Dogsitter.create!(first_name: "Julie", last_name: "Tourel", city: nantes)
yoan = Dogsitter.create!(first_name: "Yoan", last_name: "Boulet", city: lyon)

strolls = Stroll.create!(date: Date.new(2020,9,10), dogsitter: jacques , dog: steeve)
strolls = Stroll.create!(date: Date.new(2020,12,3), dogsitter: josé , dog:doudou )
strolls = Stroll.create!(date: Date.new(2020,11,5), dogsitter: josé , dog: tomate )
strolls = Stroll.create!(date: Date.new(2020,10,4), dogsitter: marianne, dog: steeve)
strolls = Stroll.create!(date: Date.new(2020,10,7), dogsitter: julie, dog: snoopy)
strolls = Stroll.create!(date: Date.new(2020,11,9), dogsitter: yoan, dog: fanta)

puts "ending seeds"