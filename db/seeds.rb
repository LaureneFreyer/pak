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
nemo = Pet.new(user: dora, name: 'Nemo', address: 'Pau', price: 10, content: 'Idéal pour les gens solo.', rating: 4, species: 'Poisson')
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
flip = Pet.new(user: cyrille, name: 'Flipper', address: 'Biarritz', price: 299, content: 'Adore faire des ronds dans la mer.', rating: 5, species: 'Dauphin')
flip.photo.attach(io: file13, filename: 'dauphin.jpg', content_type: 'images/png')
flip.save!

file14 = URI.open('https://www.consoglobe.com/wp-content/uploads/2016/12/adopter-tortue-1.jpg')
marie = Pet.new(user: cyrille, name: 'Marie', address: 'Balma', price: 55, content: 'Sa nourriture préférée? La salade bien sûr!', rating: 4, species: 'Tortue')
marie.photo.attach(io: file14, filename: 'tortue.jpg', content_type: 'images/png')
marie.save!

file15 = URI.open('https://www.woopets.fr/assets/races/000/103/og-image/caniche_2.jpg')
milou = Pet.new(user: cyrille, name: 'Milou', address: 'Toulouse', price: 25, content: 'Vous le louez, vous le gardez.', rating: 0, species: 'Chien')
milou.photo.attach(io: file15, filename: 'milou.jpg', content_type: 'images/png')
milou.save!

file16 = URI.open('https://www.ipnoze.com/wordpress/wp-content/uploads/2023/05/001_20230501144039.jpg')
garfiel = Pet.new(user: cyrille, name: 'Garfield', address: 'Nice', price: 8, content: "Le prix de la nourriture n'est pas inclus.", rating: 3, species: 'Chat')
garfiel.photo.attach(io: file16, filename: 'garfiel.jpg', content_type: 'images/png')
garfiel.save!

file17 = URI.open('https://thumbs.dreamstime.com/b/tigre-de-bengale-15025599.jpg')
alfred = Pet.new(user: cyrille, name: 'Alfred', address: 'Paris', price: 899, content: "Sage, mais nécessite une laisse renforcée.", rating: 5, species: 'Tigre')
alfred.photo.attach(io: file17, filename: 'alfred.jpg', content_type: 'images/png')
alfred.save!

file18 = URI.open('https://upload.chatsdumonde.com/img_global/24-cousins-du-chat/_light-14123-panthere-noire.jpg')
bagera = Pet.new(user: cyrille, name: 'Bagheera', address: 'Marseille', price: 2899, content: "Sage, mais nécessite une laisse renforcée.", rating: 5, species: 'Panthère')
bagera.photo.attach(io: file18, filename: 'bagheera.jpg', content_type: 'images/png')
bagera.save!

file19 = URI.open('https://www.autourdesanimaux.com/wp-content/uploads/blobfish-2-300x300.jpeg')
boby = Pet.new(user: cyrille, name: 'Boby', address: 'Brest', price: 278, content: "C'est un poisson? Essayez le.", rating: 2, species: 'Poisson')
boby.photo.attach(io: file19, filename: 'boby.jpg', content_type: 'images/png')
boby.save!

file20 = URI.open('https://jardinage.lemonde.fr/images/dossiers/2019-09/perroquet-ara-133925.jpg')
jacob = Pet.new(user: cyrille, name: 'Jacob', address: 'Cannes', price: 198, content: "Jacooooooob!", rating: 5, species: 'Oiseau')
jacob.photo.attach(io: file20, filename: 'jacob.jpg', content_type: 'images/png')
jacob.save!

file21 = URI.open('https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hpZW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60')
oprah = Pet.new(user: cyrille, name: 'Oprah', address: 'Limoges', price: 22, content: "Oprah adore regarde la télé installée confortablement sur les genoux.", rating: 5, species: 'Chien')
oprah.photo.attach(io: file21, filename: 'oprah.jpg', content_type: 'images/png')
oprah.save!

file22 = URI.open('https://images.unsplash.com/photo-1537151625747-768eb6cf92b2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGNoaWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60')
peter = Pet.new(user: bob, name: 'Peter', address: 'Tours', price: 25, content: "Chiot Corgi très joueur qui ravira vos enfants et rendra jaloux tous ses amis.", rating: 5, species: 'Chien')
peter.photo.attach(io: file22, filename: 'peter.jpg', content_type: 'images/png')
peter.save!

file23 = URI.open('https://images.unsplash.com/photo-1588943211346-0908a1fb0b01?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNoaWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60')
steven = Pet.new(user: dora, name: 'Steven', address: 'Châteauroux', price: 20, content: "Steven adore se rouler dans l'herbe!! Mais aussi dans les bouses de vache... Oups.", rating: 2, species: 'Chien')
steven.photo.attach(io: file23, filename: 'steven.jpg', content_type: 'images/png')
steven.save!

file24 = URI.open('https://images.unsplash.com/photo-1530281700549-e82e7bf110d6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80')
andy = Pet.new(user: dora, name: 'Andy', address: 'Vannes', price: 25, content: "Vous avez prévu une balade à la plage? Vous avez besoin de compagnie? Vous voulez vous balader les patoûnes dans l'eau? Amenez Andy avec vous!", rating: 4, species: 'Chien')
andy.photo.attach(io: file24, filename: 'andy.jpg', content_type: 'images/png')
andy.save!

file25 = URI.open('https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hhdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60')
princessepinpin = Pet.new(user: cyrille, name: 'Princesse Pinpin', address: 'Châteaubriand', price: 15, content: "Princesse Pinpin est très affectueuse mais peu aussi se montrer intransigeante si vous lui achetez la mauvaise marque de pâtée...", rating: 3, species: 'Chat')
princessepinpin.photo.attach(io: file25, filename: 'princessepinpin.jpg', content_type: 'images/png')
princessepinpin.save!

file26 = URI.open('https://images.unsplash.com/photo-1533738363-b7f9aef128ce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80')
griffin = Pet.new(user: bob, name: 'Griffin', address: 'Nice', price: 12, content: "Griffin adore se poser dans un hamac au soleil pour consommer de l'herbe à chat.", rating: 1, species: 'Chat')
griffin.photo.attach(io: file26, filename: 'griffin.jpg', content_type: 'images/png')
griffin.save!

file27 = URI.open('https://images.unsplash.com/photo-1574158622682-e40e69881006?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80')
patriot = Pet.new(user: dora, name: 'Patriot', address: 'Metz', price: 18, content: "Son pêché mignon? Les croquettes au saumon. Attention, soyez à l'heure pour son dîner!", rating: 4, species: 'Chat')
patriot.photo.attach(io: file27, filename: 'patriot.jpg', content_type: 'images/png')
patriot.save!

file28 = URI.open('https://images.unsplash.com/photo-1540979129101-fef4ab23dbd6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1173&q=80')
calypso = Pet.new(user: cyrille, name: 'Calypso', address: 'Lille', price: 10, content: "De très bonne compagnie. Attention aux cacas partout. Oui, partout.", rating: 2, species: 'Oiseau')
calypso.photo.attach(io: file28, filename: 'calypso.jpg', content_type: 'images/png')
calypso.save!

file29 = URI.open('https://images.unsplash.com/photo-1604826010917-65cf53d6249b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
rene = Pet.new(user: bob, name: 'René', address: 'Rouen', price: 50, content: "Magnifique ara qui impressionera vos amis de par ses jolies plûmes et son magnifique chant. De très bonnes imitations également!", rating: 5, species: 'Oiseau')
rene.photo.attach(io: file29, filename: 'rene.jpg', content_type: 'images/png')
rene.save!

file30 = URI.open('https://images.unsplash.com/photo-1592089416462-2b0cb7da8379?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=465&q=80')
gabriella = Pet.new(user: dora, name: 'Gabriella', address: 'Dijon', price: 35, content: "Très belle peruche. Tout est dit.", rating: 3, species: 'Oiseau')
gabriella.photo.attach(io: file30, filename: 'gabriella.jpg', content_type: 'images/png')
gabriella.save!

file31 = URI.open('https://images.unsplash.com/photo-1507666405895-422eee7d517f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
tik = Pet.new(user: cyrille, name: 'Tik', address: 'Annecy', price: 32, content: "Pensez à faire un stock de noisettes avant de l'accueillir chez vous.", rating: 2, species: 'Ecureuil')
tik.photo.attach(io: file31, filename: 'tik.jpg', content_type: 'images/png')
tik.save!

file32 = URI.open('https://images.unsplash.com/photo-1569219357232-1116aaf94241?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGVjdXJldWlsfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60')
tak = Pet.new(user: cyrille, name: 'Tak', address: 'Annecy', price: 32, content: "Le jumeau de Tik.", rating: 1, species: 'Ecureuil')
tak.photo.attach(io: file32, filename: 'tak.jpg', content_type: 'images/png')
tak.save!

file33 = URI.open('https://images.unsplash.com/photo-1588942173353-0c53a1bf9081?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bW91dG9ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60')
pepper = Pet.new(user: bob, name: 'Pepper', address: 'Vichy', price: 60, content: "A tenir éloigné des barbecues.", rating: 5, species: 'Mouton')
pepper.photo.attach(io: file33, filename: 'pepper.jpg', content_type: 'images/png')
pepper.save!

file34 = URI.open('https://images.unsplash.com/photo-1539028418546-92c27329347a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=446&q=80')
regine = Pet.new(user: cyrille, name: 'Régine', address: 'Clermont-Ferrand', price: 99, content: "Prévoyez des bouchons d'oreilles, Régine donne de la voix.", rating: 1, species: 'Autruche')
regine.photo.attach(io: file34, filename: 'regine.jpg', content_type: 'images/png')
regine.save!

file35 = URI.open('https://images.unsplash.com/flagged/photo-1551255868-86bbc8e0f971?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1882&q=80')
servan = Pet.new(user: dora, name: 'Servan', address: 'Sevran', price: 399, content: "Servan le serval de Sevran.", rating: 5, species: 'Serval')
servan.photo.attach(io: file35, filename: 'servan.jpg', content_type: 'images/png')
servan.save!

file36 = URI.open('https://images.unsplash.com/photo-1544878221-8adae82e4538?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
griotte = Pet.new(user: dora, name: 'Griotte', address: 'Chambéry', price: 109, content: "Griotte la marmotte passe une bonne partie de son temps libre à enrouler du chocolat dans du papier alu.", rating: 3, species: 'Marmotte')
griotte.photo.attach(io: file36, filename: 'griotte.jpg', content_type: 'images/png')
griotte.save!

file37 = URI.open('https://images.unsplash.com/photo-1658508742557-56dd081f95f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80')
charlotte = Pet.new(user: bob, name: 'Charlotte', address: 'Genève', price: 100, content: "Préparez-vous aux cris impromptus. C'est très aigü.", rating: 2, species: 'Marmotte')
charlotte.photo.attach(io: file37, filename: 'charlotte.jpg', content_type: 'images/png')
charlotte.save!

file38 = URI.open('https://images.unsplash.com/photo-1591824438708-ce405f36ba3d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80')
howard = Pet.new(user: cyrille, name: 'Howard', address: 'Brive-la-Gaillarde', price: 999, content: "Vous souhaitez rendre inoubliable votre soirée entre amis? Howard est là pour vous.", rating: 5, species: 'Tigre')
howard.photo.attach(io: file38, filename: 'howard.jpg', content_type: 'images/png')
howard.save!

file39 = URI.open('https://images.unsplash.com/photo-1519562990232-845beca99938?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
paga = Pet.new(user: cyrille, name: 'Paga', address: 'Bourges', price: 450, content: "Paga le koala passe beaucoup beaucoup beaucoup de temps à dormir, mais aussi à manger du bambou.", rating: 1, species: 'Koala')
paga.photo.attach(io: file39, filename: 'paga.jpg', content_type: 'images/png')
paga.save!

file40 = URI.open('https://images.unsplash.com/photo-1615038552039-e1b271f14ec8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c2luZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60')
sushi = Pet.new(user: bob, name: 'Sushi', address: 'Melun', price: 180, content: "Petit chimpanzé qui aime beaucoup faire des chatouilles et raconter des blagues", rating: 5, species: 'Singe')
sushi.photo.attach(io: file40, filename: 'sushi.jpg', content_type: 'images/png')
sushi.save!

file41 = URI.open('https://images.unsplash.com/photo-1531989417401-0f85f7e673f8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHNpbmdlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60')
joa = Pet.new(user: dora, name: 'Jao', address: 'Meaux', price: 200, content: "De très bonne compagnie mais un poil narcissique", rating: 4, species: 'Singe')
joa.photo.attach(io: file41, filename: 'joa.jpg', content_type: 'images/png')
joa.save!

file42 = URI.open('https://images.unsplash.com/photo-1516750860688-6edafc01087f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHNpbmdlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60')
kif = Pet.new(user: cyrille, name: 'Kif', address: 'Carqueiranne', price: 120, content: "Kif a des tendances kleptomanes. Cachez vos affaires personnelles, surtout celles qui brillent.", rating: 0, species: 'Singe')
kif.photo.attach(io: file42, filename: 'kif.jpg', content_type: 'images/png')
kif.save!




Reservation.create!(start_date: 2023_12_25, end_date: 2023_12_27, user: bob, pet: alfred)
Reservation.create!(start_date: 2023_07_12, end_date: 2023_07_13, user: cyrille, pet: charlotte)
Reservation.create!(start_date: 2023_06_25, end_date: 2023_06_27, user: cyrille, pet: griotte)
Reservation.create!(start_date: 2023_06_12, end_date: 2023_06_13, user: dora, pet: sushi)
Reservation.create!(start_date: 2023_06_20, end_date: 2023_06_27, user: dora, pet: charlotte)
Reservation.create!(start_date: 2023_06_27, end_date: 2023_06_30, user: cyrille, pet: pepper)
Reservation.create!(start_date: 2023_07_25, end_date: 2023_07_29, user: bob, pet: kif)
Reservation.create!(start_date: 2023_06_15, end_date: 2023_07_26, user: bob, pet: joa)
Reservation.create!(start_date: 2023_07_01, end_date: 2023_07_04, user: bob, pet: howard)
Reservation.create!(start_date: 2023_08_02, end_date: 2023_08_22, user: dora, pet: rene)
Reservation.create!(start_date: 2023_07_21, end_date: 2023_07_29, user: dora, pet: griffin)
Reservation.create!(start_date: 2023_06_22, end_date: 2023_06_24, user: bob, pet: tak)
Reservation.create!(start_date: 2023_06_23, end_date: 2023_07_23, user: cyrille, pet: polly)
Reservation.create!(start_date: 2023_07_03, end_date: 2023_07_13, user: cyrille, pet: patriot)
