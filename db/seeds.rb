# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
testUser = User.create(email: "test@test.com",phone: "6467970811", first_name:"test", last_name:"test", balance: "500", password:"addytt")
testUser2 = User.create(email: "akiller@gmail.com", phone: "7167860090", first_name:"ade", last_name: "salam", balance:"45", password: "abcdef")
testCard = Card.create(number: "3472109876897612", card_type: "Visa", expMonth: "06", expYear: "15", code:"312")
testCard2 = Card.create(number: "6785098564243561", card_type: "Mastercard", expMonth:"10", expYear:"16", code:"098")
testUserCard = UserCard.create(user_id: 1, card_id: 1)
testUserCard = UserCard.create(user_id: 2, card_id: 2)