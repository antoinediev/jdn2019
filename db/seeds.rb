# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'jdn@ig2i.fr', password: 'jdnoscar', password_confirmation: 'jdnoscar') if Rails.env.development?

%w[
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
