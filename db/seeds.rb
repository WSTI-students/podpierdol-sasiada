users = [{ first_name: "Kermit", last_name: "Frog"},
{ first_name: "Kulfon", last_name: "Maly"},
{ first_name: "Muppet", last_name: "Show"},
{ first_name: "Maruda", last_name: "Smerf"}]

users.each { |el| User.create!( email: "#{el[:first_name]}@mail.com",
first_name: "#{el[:first_name]}", last_name:"#{el[:last_name]}",
nickname: "nick_#{el[:first_name]}", password: "pass_#{el[:first_name]}" ) }

FactoryBot.create_list(:confirmed_complaint, 20)
