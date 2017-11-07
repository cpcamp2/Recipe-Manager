require 'faker'

Rating.delete_all
Recipe.delete_all
User.delete_all


penn = User.create(email: "penn@gmail.com", password: "123456")
catherine = User.create(email: "catherine@gmail.com", password: "123456")
david = User.create(email: "david@gmail.com", password: "123456")
amber = User.create(email: "amber@gmail.com", password: "123456")


15.times do
  User.create(email: Faker::Internet.email, password: Faker::Internet.password(6, 15))
end


30.times do
  Recipe.create(name: Faker::Food.dish, difficulty: "Hard", prep_time: Faker::Number.number(2), directions: Faker::Lorem.words, ingredients: Faker::Food.ingredient, user_id: Faker::Number.between(1, 4), category: "Appetizer")
end

Recipe.create(name: 'pancakes', difficulty: 'hard', prep_time: 30, directions: "test", ingredients: "test", user_id: 2, category: "breakfast", image_url: "https://static01.nyt.com/images/2017/03/24/dining/24COOKING-CLASSICPANCAKES/24COOKING-CLASSICPANCAKES-videoSixteenByNineJumbo1600.jpg")

Recipe.create(name: 'pasta', difficulty: 'hard', prep_time: 30, directions: "test", ingredients: "test", user_id: 2, category: "breakfast", image_url: "http://cdn-image.myrecipes.com/sites/default/files/styles/4_3_horizontal_-_1200x900/public/image/lighten-up-america/pasta-vodka-cream-sauce-ck-x.jpg?itok=hNBgMYDa")


50.times do
  Rating.create(score: Faker::Number.between(1, 5), user_id: Faker::Number.between(1, 4), recipe_id: Faker::Number.between(1, 30))
end



