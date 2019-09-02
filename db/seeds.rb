# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
system("clear")
Item.destroy_all
20.times do
	Item.create(title: Faker::Creature::Cat.name, description: Faker::Creature::Cat.breed, 
		price: Faker::Commerce.price(range: 0..1000.0, as_string: false), image_url: Faker::Avatar.image(slug:"my-own-slug", size:"50x50", format:"jpg")) 
end