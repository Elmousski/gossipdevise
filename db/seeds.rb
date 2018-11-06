# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

rng = Random.new

10.times do
  user = User.create!(anonymous_username: Faker::OnePiece.character, password: Faker::Number.leading_zero_number(6), email: Faker::Internet.email)
end

10.times do
  user2 = Gossip.create!(content: Faker::OnePiece.quote, user_id: User.all.ids.sample)
end
