# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning database..."
# User.destroy_all
# UserStep.destroy_all
# UserCourse.destroy_all
# Megalith.destroy_all
# Step.destroy_all


puts "Creating User..."

puts "User created!"



# puts "Creating UserStep..."

# puts "UserStep created!"



# puts "Creating UserCourse..."

# puts "UserCourse created!"



puts "Creating Course..."

puts "Course created!"



puts "Creating Megalith..."

kerlescan_alignement = Megalith.new (
  name: "Alignement de Kerlescan",
  adresse: "Carnac",
  category: "Menhir",
  description: "L'alignement est composé de 555 pierres subsistantes, réparties sur 13 files. L'ensemble se déroule sur environ 350 m de longueur, pour 140 m de largeur dans sa partie la plus étroite, à l'est. L'alignement est globalement orienté selon un axe est-ouest, rompant l'orientation des alignements situées plus à l'est, dont l'orientation générale est nord-est - sud-ouest.Les files les plus méridionales sont disposées en éventail. Bien que ce ne soit pas le cas, les files septentrionales donnent cette même impression, du fait de la décroissance de leurs longueurs.",
  latitude: "47.60373",
  longitude: "-3.05048"
)
kerlescan_alignement.save!

puts "Megalith created!"



puts "Creating Step..."

carnac_step_1 = Step.new(
  position: 1,
  question: "A quelle époque, les mégalithes ont-ils été créés ?",
  answer_1: "L'époque gauloise",
  answer_2: "Le Néolithique",
  answer_3: "L'Antiquité",
  answer_4: "L'ère mégalithique",
  correct_answer:  2
)
carnac_step_1.save!

puts "Step created!"

puts "Finished!"

# crabe_photo = File.open(Rails.root.join('db/fixtures/pets/crabe_1.jpg'))
# crabe.photo.attach(io:crabe_photo, filename: 'crabe_1.jpg', content_type: 'image/jpg')
# crabe.save!
# pierref = User.new( email: "pierref@mail.com", username: "Pierre", phone_number: "0659868756", address: "Brest", password: "azerty")
# pierref.photo.attach(io:File.open('db/fixtures/users/pierre.jpg'), filename: 'pierre.jpg', content_type: 'image/jpg')
# pierref.save!
# reservation1 = Reservation.create(pet: cat, user: pierref, start_date: Date.new(2020,2,25), end_date: Date.new(2020,2,27), status: 'Terminée', total_price: 64)

