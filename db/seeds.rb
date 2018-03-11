# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([{email: "mail4@test.pl", first_name: "Kermit", last_name: "Frog",
 nickname: "kermitFrog", password: "kermitkermit"},
 {email: "mail1@test.pl", first_name: "Kulfon", last_name: "Maly",
 nickname: "kulfonMaly", password: "kulfonkulfon"},
 {email: "mail2@test.pl", first_name: "Muppet", last_name: "Show",
 nickname: "muppetShow", password: "muppetmuppet"},
 {email: "mail3@test.pl", first_name: "Maruda", last_name: "Smerf",
 nickname: "smerfMaruda", password: "smerfsmerf"}])
