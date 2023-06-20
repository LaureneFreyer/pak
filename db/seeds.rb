Pet.destroy_all
User.destroy_all

bob = User.create!(email: 'bob@test.com', password: 'password', role: 'locataire', first_name: 'Bob', last_name: 'Le Bricoleur')
dora = User.create!(email: 'dora@test.com', password: 'password', role: 'propriétaire', first_name: 'Dora', last_name: "L'Exploratrice")

Pet.create!(user: bob, name: 'Polly', address:'Rennes', price: 30, content: 'Magnifique chien très poilu', rating: 5, species: 'chien')
Pet.create!(user: bob, name: 'Uzor', address:'La Rochelle', price: 500, content: 'Parfait pour vos événements type pool party!', rating: 5, species: 'hippopotame')
Pet.create!(user: dora, name: 'Nemo', address:'Pau', price: 10, content: 'Idéal pour les gens solo', rating: 4, species: 'poisson rouge')
Pet.create!(user: dora, name: 'Rio', address:'Paris', price: 300, content: 'Belle girafe très docile', rating: 4, species: 'girafe')
Pet.create!(user: dora, name: 'Thanos', address:'Lorient', price: 100, content: 'Cet animal sera parfait pour tondre vos pelouses!', rating: 5, species: 'mouton')
Pet.create!(user: dora, name: 'Fiona', address:'Lyon', price: 30, content: 'Petit chaton tout doux', rating: 5, species: 'chat')
Pet.create!(user: dora, name: 'Téa', address:'Caen', price: 50, content: 'Jolie loutre idéale pour tenir compagnie dans le bain', rating: 4, species: 'loutre')
Pet.create!(user: dora, name: 'Scott', address:'Nancy', price: 20, content: 'Scott est très agile et rapide, pas idéal pour les personnes âgées!!', rating: 5, species: 'écureuil')
