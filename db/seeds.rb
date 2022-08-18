# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# refactor: use the API to scrape from external database

require 'faker'
Movie.destroy_all

20.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Hipster.sentence,
    poster_url: 'https://picsum.photos/200/300',
    rating: rand(1.0..10.0).round(1)
  )
end
