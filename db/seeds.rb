# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
user1 = User.create!({ name: "Matthew Taylor", email: "ilovethebeatles@yahoo.com", password: "password", password_confirmation: "password", image: "picture.com" })

user2 = User.create!({ name: "Madeline Vogel", email: "girlpower@gmail.com", password: "password", password_confirmation: "password", image: "image.com" })

user3 = User.create!({ name: "Eddie Tong", email: "lilasianboy@gmail.com", password: "password", password_confirmation: "password", image: "selfie.com" })

Room.destroy_all
RoomImage.destroy_all
room1 = Room.create!({ user_id: user1.id, address: "first street", city: "New York City", state: "Kansas", price: 100, description: "cute lil house", home_type: "mini house", total_occupancy: 12, total_bedrooms: 1, total_bathrooms: 0.5 })
RoomImage.create!({ room_id: room1.id, url: "tiny_home.jpg" })
RoomImage.create!({ room_id: room1.id, url: "tiny_bedroom.jpg" })
RoomImage.create!({ room_id: room1.id, url: "tiny_bathroom.jpg" })

room2 = Room.create!({
  user_id: user1.id, address: "second street", city: "some canadian city", state: "canada", price: 30, description: "its a cold little hosue", home_type: "igloo", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 0,
})
RoomImage.create!({ room_id: room2.id, url: "igloo.jpg" })
RoomImage.create!({ room_id: room2.id, url: "igloo_lights.jpg" })
RoomImage.create!({ room_id: room2.id, url: "igloo_inside.jpg" })

room3 = Room.create!({ user_id: user2.id, address: "third street", city: "boring", state: "oregon", price: 50, description: "i mean its oregon what do you expect", home_type: "trailer", total_occupancy: 6, total_bedrooms: 2, total_bathrooms: 1 })
RoomImage.create!({ room_id: room3.id, url: "trailer.jpg" })
RoomImage.create!({ room_id: room3.id, url: "trailer_inside.jpg" })
RoomImage.create!({ room_id: room3.id, url: "trailer_view.jpg" })
