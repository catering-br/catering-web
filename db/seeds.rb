# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Telephone.delete_all


Client.delete_all
Client.create! login: "user1","u@h.com", "password",234
Client.create! login: "user2","a@h.com", "pass",123
Client.create! login: "usProf","profesional@hotmail.com", "pass",456

Professional.delete_all
Professional.create!

Product.delete_all
Product.create! id: 1, name: "Banana", price: 0.49, active: true
Product.create! id: 2, name: "Apple", price: 0.29, active: true
Product.create! id: 3, name: "Carton of Strawberries", price: 1.99, active: true




