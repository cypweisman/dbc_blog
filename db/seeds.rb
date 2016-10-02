require 'faker'

10.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")
end

20.times do
  Post.create(user_id: rand(1..10), title: Faker::Hipster.sentence(3), body: Faker::Hipster.paragraph)
end