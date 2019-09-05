# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
system("clear")
Item.destroy_all

12.times do
	cat_collection = ["http://www.leparisien.fr/resizer/74wMQIeXKLDUKuKvSzJQME_0ULg=/932x582/arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/KNVYKZBDTTOXNO37FEVDTD5DJU.jpg",
				 "https://www.18h39.fr/wp-content/uploads/2019/04/chat-trop-chou-600x420.jpg", 
				 "http://www.micetto.com/upload/conseils/Noms-de-chat-en-L-1.jpg",
				"http://golem13.fr/wp-content/uploads/2017/11/chat-double-face-chim%C3%A8re-700x460.jpg",
				"https://www.santevet.com/upload/admin/images/article/chat_2_2/chat_seul/sterilsation_chat_MSD_18.jpeg",
				"https://www.pourquoidocteur.fr/media/article/thunbs/uploded_istock-1056607508-1553265014.jpg",
				"https://static.wamiz.fr/images/articles/facebook/article/interpreter-attitudes-chat-fb-5942b57e03e2d.jpg",
				"https://www.1jour1actu.com/wp-content/uploads/chat-vert-750x500.png",
				"https://assurance.carrefour.fr/var/site/storage/images/0/9/9/8/58990-26-fre-FR/chat-malheureux-t.png",
				"https://i.pinimg.com/originals/12/4c/38/124c38e0e478df5bb129b5266b308dc7.jpg",
				"https://jardinage.lemonde.fr/images/dossiers/2017-08/chaton-161238.jpg",
				"https://www.lebuvardbavard.com/wp-content/uploads/sites/29/2019/06/chaton-peluche-820x410.jpg",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7SIx8EjFfkIo_NA4IipWKD4CXZSpc_UH2yE8cS7U3egzWJWfQOw",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7SIx8EjFfkIo_NA4IipWKD4CXZSpc_UH2yE8cS7U3egzWJWfQOw",
				"https://www.monchatetmoi.fr/wp-content/uploads/2019/06/anxiete-chat-1024x768.jpg"]


	Item.create(title: Faker::Creature::Cat.unique.name, description: Faker::Creature::Cat.registry, 
		price: Faker::Commerce.price(range: 0..1000.0, as_string: false), image_url: cat_collection[rand(15)]) 
end
tp Item.all

