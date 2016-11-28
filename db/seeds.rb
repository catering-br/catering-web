# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

environment_seed_file = File.join(Rails.root, 'db', 'seed', "#{Rails.env}.rb")

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}.jpg"))
end

Client.delete_all
c2 = Client.create! login: "usProf", email:"profissional@hotmail.com", name:"tradição Japonesa", password:"pass123456", cpf:45698765432
c1 = Client.create! login: "user2",email:"a@h.com", name:"delicias Arabes", password:"123456",cpf:12398745625
c3 = Client.create! login: "user1", email:"u@h.com", name:"name User", password:"password",cpf:12345678901
c4 = Client.create! login: "lavie", email:"admin@lavie.com" , name: "C'est la vie, gastronomia" , password: "laviepas", cpf:'07378321000109'

c7 = Client.create! login: 'felipe', email: 'felipe@mail.com', name: 'Felipe Alberto dos Santos', password: '123456', cpf: '205698788812'

c5 = Client.create! login: "farmfresh", email:"admin@farmfresh.com" , name: "Farm Fresh" , password: "farmfreshpas", cpf:'17378321000109'
c6 = Client.create! login: "oggi", email:"admin@oggi.com" , name: "Oggi by Pronutri" , password: "oggipas", cpf:'18978321000109'


Telephone.delete_all
Telephone.create! client:c1, telephone: '23444543'
#Telephone.create! telephone: 65574839

CreditCard.delete_all
CreditCard.create! client:c1, name:"Banco do Brasil", number:"4859753812542000", digit:"154", flag:"Visa", expiration:"12/31"
CreditCard.create! client:c1, name:"Banco Bradesco", number:"8475937410283957", digit:"332", flag:"Elo", expiration:"12/34"
CreditCard.create! client:c1, name:"Banco Itaú", number:"1827304958120936", digit:"255", flag:"MasterCard", expiration:"12/18"
CreditCard.create! client:c2, name:"Banco do Brasil", number:"9279735275937645", digit:"128", flag:"Visa", expiration:"12/40"
CreditCard.create! client:c3, name:"Caixa Economica Federal", number:"4673826475923340", digit:"032", flag:"MasterCard", expiration:"12/17"
CreditCard.create! client:c3, name:"Banco Santander", number:"3928337455688904", digit:"512", flag:"MasterCard", expiration:"12/22"
CreditCard.create! client:c7, name:"Banco do Brasil", number:"4859753812542001", digit:"890", flag:"Visa", expiration:"12/32"


Address.delete_all
Address.create! client:c1, cep: '05508020', street: 'street1', number: 123, city: 'São Paulo',
                country: 'Brasil', neighborhood: 'butantã', address_type: Address.address_types['residencial']
Address.create! client:c1, cep: '05508021', neighborhood: 'butantã', street: 'street2', number: 123, city: 'São Paulo',
                country: 'Brasil', address_type: Address.address_types['residencial']
Address.create! client:c2, cep: '55080900', neighborhood: 'butantã', street: 'street3', number: 123, city: 'São Paulo',
                country: 'Brasil', address_type: Address.address_types['comercial'], delivery_radius: 4
Address.create! client:c4, cep: '01430001', neighborhood: 'Jardim América', street: 'Avenida Brasil', number:1122,
                city: 'São Paulo', country: 'Brasil', address_type: Address.address_types['comercial'], delivery_radius: 4

Address.create! client:c7, cep: '01430001', neighborhood: 'Jardim América', street: 'Avenida Brasil', number:1122, city: 'São Paulo',
                country: 'Brasil', address_type: Address.address_types['residencial']
Address.create! client:c5, cep: '05508030', neighborhood: 'butantã', street: 'Vital do Brasil', number:1044,
                city: 'São Paulo', country: 'Brasil', address_type: Address.address_types['comercial'], delivery_radius: 4
Address.create! client:c6, cep: '05508030', neighborhood: 'butantã', street: 'Vital do Brasil', number:244,
                city: 'São Paulo', country: 'Brasil', address_type: Address.address_types['comercial'], delivery_radius: 4

Professional.delete_all
p1 = Professional.create! client: c1, description: 'Tradição em comidas Árabes', rating: 4.1, logo: seed_image("professional_logo1")
p2 = Professional.create! client: c2, description: 'Tradição em comidas Japonesas', rating: 4.5
p3 = Professional.create! client: c4, description: 'Nossa equipe trabalha de forma eficiente e profissional, garantindo
um ótimo serviço. Oferecemos uma grande diversidade de produtos', rating: 4.6
p4 = Professional.create! client: c5, description: 'Uma refeição completa com ingredientes frescos, orgânicos e selecionados.
Tudo que seu corpo precisa no ritmo que seu dia pede. A combinação perfeita para uma rotina saudável. Entrega Rápida!', rating: 4.5
p5 = Professional.create! client: c6, description: 'Comida contemporânea. Hoje, amanhã e sempre!', rating: 4.5

CategoryProduct.delete_all
cEntrada = CategoryProduct.create! name: "Entradas/Salgados"
cComida = CategoryProduct.create! name: "Pratos"
cSobremesa = CategoryProduct.create! name: "Sobremesas"
cFlores = CategoryProduct.create! name: "Flores"
cQuitute = CategoryProduct.create! name: "Quitutes"
cBebida = CategoryProduct.create! name: "bebida"
cSalada = CategoryProduct.create! name: "Salada"

Product.delete_all
pd1=Product.create! professional: p1, name: "Pizza de banana", price: 20.49, description: "Pizza doçe feita de banana e leite condensada",
                    rating: 2, category_product:cEntrada
Product.create! professional: p1, name: "Pie de maça", price: 0.29, description: "Pie de maça tradicional",
                rating: 3, category_product:cSobremesa
pd2=Product.create! professional: p2, name: "Carton of Strawberries", price: 10.99,
                    description: "description3", rating: 4, category_product:cComida
Product.create! professional: p1, name: "Rosa vermelha", price: 5.49, description: "uma flor",
                rating: 4, category_product:cFlores
pd3=Product.create! professional: p1, name: "Pizza marguerita", price: 34.99, description: "Pizza",
                    rating: 4, category_product:cComida
#                    image: seed_image("pizza")
pd4=Product.create! professional: p1, name: "Donut", price: 4.99, description: "has sugar",
                    rating: 4, category_product:cSobremesa
#                    image: seed_image("donut")

pd5 = Product.create! professional: p3, name: "crepé de frango desfiado", description: "Crepe recheado com frango desfiado,
gruyére, gorgonzola, molho de queijo e passas, finalizado com calda de cassis.", category_product: cQuitute, price: 24.99, rating: 5

#-----------------Dados reais ------------------
#Farm Fresh
pd6 = Product.create! professional: p4, name: "Salada Caesar com frango Orgânico", description: "Peito de frango Orgânico,
alface americana, granola salgada e molho tipo Caesar com iogurte.", category_product: cSalada, price: 36.90, rating: 5

pd7 = Product.create! professional: p4, name: "Salada de Quinoa Caprese com frango Orgânico", description: "Peito de frango
Orgânico, Quinoa, tomate grape, mussarela de búfala, Amêndoa laminada e molho tipo Pesto.", category_product: cSalada, price: 37.90, rating: 3

pd8 = Product.create! professional: p4, name: "Salada Thai com peito de frango Orgânico", description: "Bifum com legumes,
frango Orgânico, shitake, brócolis, castamha de caju e molho oriental.", category_product: cSalada, price: 37.90, rating: 5

pd9 = Product.create! professional: p4, name: "Suco Fazenda da Toca orgânico 200ml", description: "Suco de Tangerina",
                      category_product: cBebida, price: 3.90, rating: 5
#Oggi by Pronutri
pd10 = Product.create! professional: p5, name: "Salada italiana", description: "Mix de folhas, parmesão, tomate, molho
Italiano e azeitona.", category_product: cSalada, price: 35.23, rating: 5

pd11 = Product.create! professional: p5, name: "Salada caesar", description: "Alface americana, tomate cereja,
frango grelhado em tiras e croutons ao molho caesar.", category_product: cSalada, price: 30.54, rating: 5

pd12 = Product.create! professional: p5, name: "Filé a parmegiana", description: "Com arroz e batata frita.",
                       category_product: cComida, price: 34.04, rating: 5

pd13 = Product.create! professional: p5, name: "Strogonoff de carne", description: "Com arroz e batata frita.",
                       category_product: cComida, price: 35.26, rating: 5

pd14 = Product.create! professional: p5, name: "Contra filé ao alho", description: "Com arroz, e vinagrete.",
                       category_product: cComida, price: 35.54, rating: 5

# pd10 = Product.create! professional: p4, name: "", description: "", category_product: cComida, price: 36.90, rating: 5
#
# pd10 = Product.create! professional: p4, name: "", description: "", category_product: cComida, price: 36.90, rating: 5
#-----------------------------------------
Picture.delete_all
# Picture.create! product: pd3, image: seed_image("pizza")
# Picture.create! product: pd4, image: seed_image("donut")
# Picture.create! product: pd4, image: seed_image("donut2")
# Picture.create! product: pd5, image: seed_image("crepe")
# Picture.create! product: pd6, image: seed_image("42042_27100317_SaladaCaesa")
# Picture.create! product: pd7, image: seed_image("42042_27100318_SaladadeQui")
# Picture.create! product: pd8, image: seed_image("42042_27100321_SaladaThaic")
# Picture.create! product: pd9, image: seed_image("42042_27100346_SucoFazenda")
# Picture.create! product: pd10, image: seed_image("")
# Picture.create! product: pd11, image: seed_image("")
# Picture.create! product: pd12, image: seed_image("")
# Picture.create! product: pd13, image: seed_image("")
# Picture.create! product: pd14, image: seed_image("")


Keyword.delete_all
Keyword.create! product: pd1, word: "doçe"
Keyword.create! product: pd2,word: "salgado"
Keyword.create! product: pd1, word: "fruta"


