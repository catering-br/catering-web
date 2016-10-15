# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Client.delete_all
c2 = Client.create! login: "usProf", email:"profesional@hotmail.com", name:"name User 3", password:"pass123456", cpf:45698765432
c1 = Client.create! login: "user2",email:"a@h.com", name:"name User2", password:"123456",cpf:12398745625
c3 = Client.create! login: "user1", email:"u@h.com", name:"name User", password:"password",cpf:12345678901

Telephone.delete_all
Telephone.create! client:c1, telephone: 23444543
#Telephone.create! telephone: 65574839

Address.delete_all
Address.create! client:c1, cep: '05508020', street: 'street1', number: 123, city: 'São Paulo',
                country: 'Brasil', neighborhood: 'butantã', address_type: Address.address_types['residencial']
Address.create! client:c2, cep: '05508021', neighborhood: 'butantã', street: 'street2', number: 123, city: 'São Paulo',
                country: 'Brasil', address_type: Address.address_types['residencial']
Address.create! client:c2, cep: '55080900', neighborhood: 'butantã', street: 'street3', number: 123, city: 'São Paulo',
                country: 'Brasil', address_type: Address.address_types['comercial'], delivery_radius: 4

Professional.delete_all
p1 = Professional.create! client: c1
p2 = Professional.create! client: c2

Consumer.delete_all
u1 = Consumer.create! client:c1
u2 = Consumer.create! client:c3
u3 = Consumer.create! client:c2

CategoryProduct.delete_all
cComida = CategoryProduct.create! name: "Comida"
cFlores = CategoryProduct.create! name: "Flores"

Product.delete_all
pd1=Product.create! professional: p1, name: "Banana", price: 0.49, description: "description",
                    rating: 2, max_quantity: 100, category_product:cComida
Product.create! professional: p1, name: "Apple", price: 0.29, description: "description2",
                rating: 3, max_quantity: 100, category_product:cComida
pd2=Product.create! professional: p2, name: "Carton of Strawberries", price: 1.99,
                    description: "description3", rating: 4, max_quantity: 10, category_product:cComida
Product.create! professional: p1, name: "Rosa vermelha", price: 1.49, description: "uma flor",
                rating: 4, max_quantity: 1000, category_product:cFlores

Keyword.delete_all
Keyword.create! product: pd1, word: "doçe"
Keyword.create! product: pd2,word: "salgado"
Keyword.create! product: pd1, word: "fruta"


