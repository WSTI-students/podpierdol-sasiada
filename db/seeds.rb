# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [{ :first_name => "Kermit", :last_name => "Frog"},
{:first_name => "Kulfon", :last_name => "Maly"},
{:first_name => "Muppet", :last_name => "Show"},
{:first_name => "Maruda", :last_name => "Smerf"}]

users.each { |el| User.create!( email: "#{el[:first_name]}@mail.com",
first_name: "#{el[:first_name]}", last_name:"#{el[:last_name]}",
nickname: "nick_#{el[:first_name]}", password: "pass_#{el[:first_name]}" ) }

