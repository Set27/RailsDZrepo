# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Tag.create(name: "Ruby")
Tag.create(name: "Rails")
Tag.create(name: "C#")
User.create(login: "User9", password: "sad3jgjb4js")
User.create(login: "User8", password: "sad3jgjb4js")
Post.create(title: "Ruby on rails",body: "text",user_id: 1)
Comment.create(body:"comment text", post_id: 1, user_id: 2)
Subscribe.create(subscribe_to: 1, user_id: 2)
Tagging.create(tag_id: 1,post_id: 1)