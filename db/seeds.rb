require 'faker'

Recipe.delete_all
User.delete_all

# User.create(email: "clr2107@gmail.com", password: "cat")
penn = User.create(email: "penn@gmail.com", password: "123456")
catherine = User.create(email: "catherine@gmail.com", password: "123456")
david = User.create(email: "david@gmail.com", password: "123456")
amber = User.create(email: "amber@gmail.com", password: "123456")
# cat2 = User.create(email: "clr2107@gmail.com", password: "cat")

# Additional Recipes for testing
# Recipe.create(name: "butternut squash soup", difficulty: "easy", prep_time: 60, directions: "1. Mash up some butternut squash. 2. Add cream. 3. Heat up in a pot.", ingredients: "squash, cream", user_id: 1, category_id: 1)
# a1 = Recipe.create(name: "Taco Salad", difficulty: "Hard", prep_time: 60, directions: "Bake", ingredients: "Taco, Salad", user_id: 1, category_id: 1)
# a2 = Recipe.create(name: "Lasagna", difficulty: "Easy", prep_time: 45, directions: "Cook", ingredients: "Pasta", user_id: 2)
# a3 = Recipe.create(name: "BLT", difficulty: "Medium", prep_time: 50, directions: "Shake and bake", ingredients: "Bacon, Tomato, Bread, Lettuce", user_id: 3, category_id: 1)
# a4 = Recipe.create(name: "Mashed Potatos", difficulty: "Hard", prep_time: 15, directions: "Shake and bake!", ingredients: "Potatos, Heavy Cream", user_id: 4, category_id: 1)
# a5 = Recipe.create(name: "Fried Chicken", difficulty: "Hard", prep_time: 97, directions: "Shake and bake", ingredients: "Chicken, breading, egg", user_id: 5, category_id: 1)
# a6 = Recipe.create(name: "Chicken Salad", difficulty: "Easy", prep_time: 30, directions: "Shake and bake", ingredients: "Chicken, mayo", user_id: 6, category_id: 1)


15.times do
  User.create(email: Faker::Internet.email, password: Faker::Internet.password(6, 15))
end

# c1 = Category.create(name: "Appetizer")
# c2 = Category.create(name: "Salad")
# c3 = Category.create(name: "Main Course")
# c4 = Category.create(name: "Dessert")
# c5 = Category.create(name: "Dinner")
# c6 = Category.create(name: "Lunch")

30.times do
  Recipe.create(name: Faker::Food.dish, difficulty: "Hard", prep_time: Faker::Number.number(2), directions: Faker::Lorem.words, ingredients: Faker::Food.ingredient, user_id: Faker::Number.between(1, 6), category: "Appetizer")
end
