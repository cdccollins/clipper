# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 # t.string "title"
 #    t.string "description"
 #    t.string "location"
 #    t.string "tags"
 #    t.string "cloudinary_url"
 #    t.float "price"
 #    t.integer "number_of_views"
 #    t.bigint "user_id"
Video.destroy_all
User.destroy_all

 user = User.new(
  first_name: "Babs",
  last_name: "Moor",
  email: "babs@mail.com",
  password: "password"
  )

# https://res.cloudinary.com/dxtdzybai/video/upload/v1519733347/chat.mp4
