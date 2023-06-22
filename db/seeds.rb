require "open-uri"

Pet.destroy_all
User.destroy_all

bob_photo = URI.open("https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")
bob = User.new(email: 'bob@test.com', password: 'password', role: 'Propriétaire', first_name: 'Bob', last_name: 'Le Bricoleur')
bob.photo.attach(io: bob_photo, filename: "bob.jpg", content_type: "images/png")
bob.save!

dora_photo = URI.open("https://images.unsplash.com/photo-1484863137850-59afcfe05386?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80")
dora = User.new(email: 'dora@test.com', password: 'password', role: 'Propriétaire', first_name: 'Dora', last_name: "L'Exploratrice")
dora.photo.attach(io: dora_photo, filename: "dora.jpg", content_type: "images/png")
dora.save!

cyrille_photo = URI.open("https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80")
cyrille = User.new(email: 'cyrille.varin@live.fr', password: 'holahola', role: 'Propriétaire', first_name: 'Cyrille', last_name: "Varin" )
cyrille.photo.attach(io: cyrille_photo, filename: "cyrille.jpg", content_type: "images/png")
cyrille.save!

file1 = URI.open("https://chatschiens.com/wp-content/uploads/2020/04/Berger-des-Shetland.jpg")
polly = Pet.new(user: bob, name: 'Polly', address: 'Rennes', price: 30, content: 'Magnifique berger des Shetland, très, très, TRES poilu.', rating: 5, species: 'Chien')
polly.photo.attach(io: file1, filename: 'shetland.jpg', content_type: 'images/png')
polly.save!

file2 = URI.open('https://images.unsplash.com/photo-1499842340257-55ccb7a02645?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
uzor = Pet.new(user: bob, name: 'Uzor', address: 'La Rochelle', price: 500, content: 'Parfait pour vos événements type pool party!', rating: 5, species: 'Hippopotame')
uzor.photo.attach(io: file2, filename: 'hippo.jpg', content_type: 'images/png')
uzor.save!

file3 = URI.open('https://images.unsplash.com/photo-1539236754983-085fe1449ba4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=718&q=80')
nemo = Pet.new(user: dora, name: 'Nemo', address: 'Pau', price: 10, content: 'Idéal pour les gens solo.', rating: 4, species: 'Poisson rouge')
nemo.photo.attach(io: file3, filename: 'fish.jpg', content_type: 'images/png')
nemo.save!

file4 = URI.open('https://images.unsplash.com/photo-1610186356191-880ceaa884f3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=747&q=80')
rio = Pet.new(user: dora, name: 'Rio', address: 'Paris', price: 300, content: 'Belle girafe très docile.', rating: 4, species: 'Girafe')
rio.photo.attach(io: file4, filename: 'girafe.jpg', content_type: 'images/png')
rio.save!

file5 = URI.open('https://images.unsplash.com/photo-1484557985045-edf25e08da73?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1073&q=80')
thanos = Pet.new(user: dora, name: 'Thanos', address: 'Lorient', price: 100, content: 'Cet animal sera parfait pour tondre vos pelouses!', rating: 5, species: 'Mouton')
thanos.photo.attach(io: file5, filename: 'mouton.jpg', content_type: 'images/png')
thanos.save!

file6 = URI.open('https://images.unsplash.com/photo-1558674378-e4334d4fecc2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
fiona = Pet.new(user: dora, name: 'Fiona', address: 'Lyon', price: 30, content: 'Petit chaton tout doux.', rating: 5, species: 'Chat')
fiona.photo.attach(io: file6, filename: 'cat.jpg', content_type: 'images/png')
fiona.save!

file7 = URI.open('https://images.unsplash.com/photo-1589860170912-6b83cf6f8809?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1173&q=80')
tea = Pet.new(user: dora, name: 'Téa', address: 'Caen', price: 50, content: 'Jolie loutre idéale pour tenir compagnie dans le bain.', rating: 4, species: 'Loutre')
tea.photo.attach(io: file7, filename: 'loutre.jpg', content_type: 'images/png')
tea.save!

file8 = URI.open('https://images.unsplash.com/photo-1509987300714-11c90a6d40e7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80')
scott = Pet.new(user: dora, name: 'Scott', address: 'Nancy', price: 20, content: 'Scott est très agile et rapide, pas idéal pour les personnes âgées!!', rating: 5, species: 'Ecureuil')
scott.photo.attach(io: file8, filename: 'ecureuil.jpg', content_type: 'images/png')
scott.save!

file9 = URI.open('https://images.unsplash.com/photo-1563482776068-4dac10f9373d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
gertrude = Pet.new(user: bob, name: 'Gertrude', address: 'Fougères', price: 110, content: 'Gertrude est très rapide et adore faire la course avec nous!', rating: 4, species: 'Autruche')
gertrude.photo.attach(io: file9, filename: 'autruche.jpg', content_type: 'images/png')
gertrude.save!

file10 = URI.open('https://images.unsplash.com/flagged/photo-1566127992631-137a642a90f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
troy = Pet.new(user: bob, name: 'Troy', address: 'Nantes', price: 90, content: 'Adore les câlins et les bananes.', rating: 3, species: 'Singe')
troy.photo.attach(io: file10, filename: 'singe.jpg', content_type: 'images/png')
troy.save!

file11 = URI.open('https://images.unsplash.com/photo-1543466835-00a7907e9de1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80')
roucky = Pet.new(user: bob, name: 'Roucky', address: 'St-Malo', price: 25, content: 'Roucky apprécie beaucoup la chasse à la truffe.', rating: 4, species: 'Chien')
roucky.photo.attach(io: file11, filename: 'roucky.jpg', content_type: 'images/png')
roucky.save!

file12 = URI.open('https://images.unsplash.com/photo-1519052537078-e6302a4968d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
tigrou = Pet.new(user: dora, name: 'Tigrou', address: 'Cergy', price: 15, content: 'Tigrou adore faire la sieste.', rating: 5, species: 'Chat')
tigrou.photo.attach(io: file12, filename: 'tigrou.jpg', content_type: 'images/png')
tigrou.save!

file13 = URI.open('https://www.planetesauvage.com/fileadmin/_processed_/a/9/csm_dauphin-bandeau_db916c1aa3.jpg')
flip = Pet.new(user: cyrille, name: 'Flipper', address: 'Biarritz', price: 299, content: 'Adore faire des ronds dans la mer', rating: 4.9, species: 'Dauphin')
flip.photo.attach(io: file13, filename: 'dauphin.jpg', content_type: 'images/png')
flip.save!

file14 = URI.open('https://www.consoglobe.com/wp-content/uploads/2016/12/adopter-tortue-1.jpg')
marie = Pet.new(user: cyrille, name: 'Marie', address: 'Balma', price: 55, content: 'Sa nourriture préférée? La salade bien sur', rating: 3.9, species: 'Tortue')
marie.photo.attach(io: file14, filename: 'tortue.jpg', content_type: 'images/png')
marie.save!

file15 = URI.open('https://www.woopets.fr/assets/races/000/103/og-image/caniche_2.jpg')
milou = Pet.new(user: cyrille, name: 'Milou', address: 'Toulouse', price: 25, content: 'Vous le louez, vous le gardez', rating: 0, species: 'Chien')
milou.photo.attach(io: file15, filename: 'milou.jpg', content_type: 'images/png')
milou.save!

file16 = URI.open('https://www.ipnoze.com/wordpress/wp-content/uploads/2023/05/001_20230501144039.jpg')
garfiel = Pet.new(user: cyrille, name: 'Garfield', address: 'Nice', price: 8, content: "Le prix de la nourriture n'est pas inclus", rating: 3, species: 'Chat')
garfiel.photo.attach(io: file16, filename: 'garfiel.jpg', content_type: 'images/png')
garfiel.save!

file17 = URI.open('https://thumbs.dreamstime.com/b/tigre-de-bengale-15025599.jpg')
alfred = Pet.new(user: cyrille, name: 'Alfred', address: 'Paris', price: 899, content: "Sage, mais nécessite une laisse renforcée", rating: 5, species: 'Tigre')
alfred.photo.attach(io: file17, filename: 'alfred.jpg', content_type: 'images/png')
alfred.save!

file18 = URI.open('https://upload.chatsdumonde.com/img_global/24-cousins-du-chat/_light-14123-panthere-noire.jpg')
bagera = Pet.new(user: cyrille, name: 'Bagheera', address: 'Bali', price: 2899, content: "Sage, mais nécessite une laisse renforcée", rating: 5, species: 'Panthere')
bagera.photo.attach(io: file18, filename: 'bagheera.jpg', content_type: 'images/png')
bagera.save!

file19 = URI.open('https://www.autourdesanimaux.com/wp-content/uploads/blobfish-2-300x300.jpeg')
boby = Pet.new(user: cyrille, name: 'Boby', address: 'Brest', price: 278, content: "C'est un poisson? Essayer le", rating: 2, species: 'Poisson')
boby.photo.attach(io: file19, filename: 'boby.jpg', content_type: 'images/png')
boby.save!

file20 = URI.open('https://jardinage.lemonde.fr/images/dossiers/2019-09/perroquet-ara-133925.jpg')
jacob = Pet.new(user: cyrille, name: 'Jacob', address: 'Cannes', price: 198, content: "Jacooooooob!", rating: 5, species: 'Perroquet')
jacob.photo.attach(io: file20, filename: 'jacob.jpg', content_type: 'images/png')
jacob.save!
