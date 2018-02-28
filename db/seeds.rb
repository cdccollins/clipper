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

video = Video.new(
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  title: "Test title",
  cloudinary_url: "https://res.cloudinary.com/dxtdzybai/video/upload/v1519733347/chat.mp4",
  user: user,
  tags: "cats nature documentary",
  )

video.save!
# https://res.cloudinary.com/dxtdzybai/video/upload/v1519733347/chat.mp4
