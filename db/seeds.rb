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
	cat_collection = ["https://static.wamiz.fr/images/articles/facebook/article/chaton-fb-593eb3ebd3c5d.jpg",
				 "http://ekladata.com/eWuH-26qwD_9OX9sTHCAh57yDgg.jpg", 
				 "https://as2.ftcdn.net/jpg/00/03/42/83/500_F_3428387_tjpmWlVk0xLEF8E7jyDayD6hwBZSLE.jpg",
				"http://4everstatic.com/images/850xX/animaux/chats/chaton-sur-lherbe,-lherbe-139888.jpg",
				"https://tonpetitlook.com/wp-content/uploads/2017/05/nouveau-chaton-nouveau-defi-430442.png",
				"https://www.catizz.com/medias/article/49/agechaton2.jpg",
				"https://www.wikichat.fr/wp-content/uploads/sites/2/mau_egyptien_med-_res-___basic.png",
				"https://www.purina.fr/sites/g/files/mcldtz1371/files/2018-02/51_0_0.jpg",
				"https://www.zoomalia.com/blogz/44/l_chaton-qui-court.jpg",
				"https://i.pinimg.com/originals/12/4c/38/124c38e0e478df5bb129b5266b308dc7.jpg",
				"https://jardinage.lemonde.fr/images/dossiers/2017-08/chaton-161238.jpg",
				"https://www.lebuvardbavard.com/wp-content/uploads/sites/29/2019/06/chaton-peluche-820x410.jpg"]


	Item.create(title: Faker::Creature::Cat.name, description: Faker::Creature::Cat.registry, 
		price: Faker::Commerce.price(range: 0..1000.0, as_string: false), image_url: cat_collection[rand(0..9)]) 
end
tp Item.all