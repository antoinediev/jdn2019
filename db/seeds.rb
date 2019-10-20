# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin-jdn@ig2i.fr', password: 'oscar', password_confirmation: 'password') if Rails.env.development?

%w[
  Fight Club
  Pulp Fiction
  Very Bad Trip
  Blade Runner
  Interstellar 
  Le parrain
  Inception
  The dark knight 
  Le seigneur des anneaux
  Forrest Gump
  Jumanji
  Dikkenek
  Apocalypse now
  Retour vers le futur
  Matrix
  Le voyage de chihiro 
  Pirate des caraibes
  Into the wild 
  Gladiator
  Drive
  Les évadés 
  Les affranchis 
  Taxi
  La ligne verte 
  Django Unchained
  Shutter Island
  Kill bill
  Jurassic Park
  Requiem for a dream
  Inglourious Basterds
  Asterix Mission Cléopatre
  The truman Show
  Titanic
  Gran torino
  Léon 
  La cité de la peur 
  Psychose 
  American Pie
  La haine
  Le cinquième élément 
  Terminator
  Les temps modernes
  OSS117 
].each do |name|
  Table.create(name: name, capacity: 10)
end

%w[
  normal
  vegan
  enfant
].each do |name|
  Menu.create(name: name, icon: 'fas fa-star-and-crescent')
end
