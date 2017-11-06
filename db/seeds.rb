# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.delete_all
User.create(email: "clr2107@gmail.com", password: "cat")

Category.delete_all
Category.create(name: "dinner")

Recipe.delete_all
Recipe.create(name: "butternut squash soup", difficulty: "easy", prep_time: 60, directions: "1. Mash up some butternut squash. 2. Add cream. 3. Heat up in a pot.", ingredients: "squash, cream", user_id: 1, category_id: 1)