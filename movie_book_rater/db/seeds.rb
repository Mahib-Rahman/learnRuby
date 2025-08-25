# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Review.delete_all
Movie.delete_all
Book.delete_all

Movie.create!([
  { title: "The Shawshank Redemption", director: "Frank Darabont", year: 1994, description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency." },
  { title: "The Godfather", director: "Francis Ford Coppola", year: 1972, description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son." }
])

Book.create!([
  { title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960, description: "The story of a young girl's coming-of-age in a small Southern town and the moral crisis that rocks it." },
  { title: "1984", author: "George Orwell", year: 1949, description: "A dystopian novel set in Airstrip One, a province of the superstate Oceania in a world of perpetual war, omnipresent government surveillance, and public manipulation." }
])
