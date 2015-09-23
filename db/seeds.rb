User.create(username: "John")
User.create(username: "Bob")
User.create(username: "Steve")
User.create(username: "Patrick")

user_ids = [1,2,3,4]

20.times do Post.create({
  body: Faker::Lorem.sentence,
  user_id: user_ids.sample
  })
end
