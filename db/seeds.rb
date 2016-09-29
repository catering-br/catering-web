# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Client.delete_all
c1 = Client.create! login: "user1", email:"u@h.com", name:"name User", password:"password",cpf:245
c2 = Client.create! login: "user2",email:"a@h.com", name:"name User2", password:"123456",cpf:1239874562
Client.create! login: "usProf", email:"profesional@hotmail.com", name:"name User 3", password:"pass123456", cpf:456987878

Telephone.delete_all
Telephone.create! client:c1, telephone: 23444543
#Telephone.create! telephone: 65574839

Professional.delete_all
p1 = Professional.create! client: c1
p2 = Professional.create! client: c2

Product.delete_all
Product.create! professional: p1, name: "Banana", price: 0.49, description: "description", rating: 2
Product.create! professional: p1, name: "Apple", price: 0.29, description: "description2", rating: 3
Product.create! professional: p2, name: "Carton of Strawberries", price: 1.99, description: "description3", rating: 4




