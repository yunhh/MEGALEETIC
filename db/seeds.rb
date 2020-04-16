# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require "open-uri"

puts "Cleaning database..."
Description.destroy_all
UserStep.destroy_all
UserCourse.destroy_all
Step.destroy_all
Course.destroy_all
User.destroy_all
Megalith.destroy_all


puts "Creating Users..."
pierref = User.new(email: "pierref@mail.com", password: "azerty")
pierref.photo.attach(io:File.open('db/fixtures/users/pierre.jpg'), filename: 'pierre.jpg', content_type: 'image/jpg')
pierref.save!

lomig = User.new(email: "lomig@mail.com", password: "azerty")
lomig.photo.attach(io:File.open('db/fixtures/users/lomig.jpg'), filename: 'lomig.jpg', content_type: 'image/jpg')
lomig.save!

pierreg = User.new(email: "pierreg@mail.com", password: "azerty")
pierreg.photo.attach(io:File.open('db/fixtures/users/pierreg.jpg'), filename: 'pierreg.jpg', content_type: 'image/jpg')
pierreg.save!
puts "Users created!"



puts "Creating Courses..."

carnac_course = Course.new(
  address: "Carnac",
  name: "Les mystères de Carnac",
  mobility_access: true ,
  duration_in_minutes: 165,
  distance_in_kilometers: 5,
  rating: 5,
  description: "Découvrez les monuments légendaires de Carnac et leurs secrets."
)
carnac_course.photo.attach(io:File.open('db/fixtures/courses/carnac_course.jpg'), filename: 'carnac_course.jpg', content_type: 'image/jpg')
carnac_course.save!

monteneuf_course = Course.new(
  address: "Monteneuf",
  name: "Monteneuf Landes & Mégalithes",
  mobility_access: true ,
  duration_in_minutes: 165,
  distance_in_kilometers: 1,
  rating: 5,
  description: "Marchez au milieu des menhirs pourpres et revivez comme nos ancêtres."
)
monteneuf_course.photo.attach(io:File.open('db/fixtures/courses/monteneuf_course.jpg'), filename: 'monteneuf_course.jpg', content_type: 'image/jpg')
monteneuf_course.save!

saint_just_course = Course.new(
  address: "Saint-Just",
  name: "Saint-Just : espace naturel mégalithique",
  mobility_access: true ,
  duration_in_minutes: 165,
  distance_in_kilometers: 7,
  rating: 4,
  description: "Un livre d'architecture mégalithique à ciel ouvert."
)
saint_just_course.photo.attach(io:File.open('db/fixtures/courses/saint_just_course.jpg'), filename: 'saint_just_course.jpg', content_type: 'image/jpg')
saint_just_course.save!

locmariaquer_course = Course.new(
  address: "Locmariaquer",
  name: "course découverte Locmariaquer",
  mobility_access: true ,
  duration_in_minutes: 165,
  distance_in_kilometers: 3,
  rating: 3,
  description: "Sur la trace des exploits des bâtisseurs de mégalithes."
)
locmariaquer_course.photo.attach(io:File.open('db/fixtures/courses/locmariaquer_course.jpg'), filename: 'locmariaquer_course.jpg', content_type: 'image/jpg')
locmariaquer_course.save!

erdeven_course = Course.new(
  address: "Erdeven",
  name: "Les Géants d'Erdeven",
  mobility_access: true ,
  duration_in_minutes: 165,
  distance_in_kilometers: 1,
  rating: 3,
  description: "Découvrez les vestiges d'un alignement de menhirs similaire à Carnac."
)
erdeven_course.photo.attach(io:File.open('db/fixtures/courses/erdeven_course.jpg'), filename: 'erdeven_course.jpg', content_type: 'image/jpg')
erdeven_course.save!

puts "Courses created!"



puts "Creating Carnac Megaliths..."

puts "Creating Alignement de Kerlescan..."

alignement_de_kerlescan = Megalith.new(
  name: "Alignement de Kerlescan",
  address: "Carnac",
  category: "Menhir",
  latitude: "47.60373",
  longitude: "-3.05048"
)

alignement_de_kerlescan_description_1 = alignement_de_kerlescan.descriptions.build(
  position: 1,
  content: "En un coup d'oeil, découvrez comment sont construits les alignements de Carnac."
)
alignement_de_kerlescan_description_1.photo.attach(io:File.open('db/fixtures/megaliths/alignement_de_kerlescan/alignement_de_kerlescan_1.jpg'), filename: 'alignement_de_kerlescan_1.jpg', content_type: 'image/jpg')

alignement_de_kerlescan_description_2 = alignement_de_kerlescan.descriptions.build(
  position: 2,
  content: "Actuellement, 555 pierres se répartissent sur 13 files."
)
alignement_de_kerlescan_description_2.photo.attach(io:File.open('db/fixtures/megaliths/alignement_de_kerlescan/alignement_de_kerlescan_2.jpg'), filename: 'alignement_de_kerlescan_2.jpg', content_type: 'image/jpg')

alignement_de_kerlescan_description_3 = alignement_de_kerlescan.descriptions.build(
  position: 3,
  content: "Les menhirs sont disposés en éventail et en ordre croissant vers l'enceinte."
)
alignement_de_kerlescan_description_3.photo.attach(io:File.open('db/fixtures/megaliths/alignement_de_kerlescan/alignement_de_kerlescan_3.jpg'), filename: 'alignement_de_kerlescan_3.jpg', content_type: 'image/jpg')

alignement_de_kerlescan_description_4 = alignement_de_kerlescan.descriptions.build(
  position: 4,
  content: "Au nord de l'enceinte se trouve un tumulus discret long de 35 mètres. Un menhir en indique l'extrêmité."
)
alignement_de_kerlescan_description_4.photo.attach(io:File.open('db/fixtures/megaliths/alignement_de_kerlescan/alignement_de_kerlescan_4.jpg'), filename: 'alignement_de_kerlescan_4.jpg', content_type: 'image/jpg')


alignement_de_kerlescan.save!

puts "Alignement de Kerlescan created!"


puts "Creating Géant du Manio..."

geant_du_manio = Megalith.new(
  name: "Géant du Manio",
  address: "Carnac",
  category: "Menhir",
  latitude: "47.6036",
  longitude:"-3.05598"
)

geant_du_manio_description_1 = geant_du_manio.descriptions.build(
  position: 1,
  content: "Il s'agit d'une pierre dressée d'environ 6,5 m de haut."
)
geant_du_manio_description_1.photo.attach(io:File.open('db/fixtures/megaliths/geant_du_manio/geant_du_manio_1.jpg'), filename: 'geant_du_manio_1.jpg', content_type: 'image/jpg')

geant_du_manio_description_2 = geant_du_manio.descriptions.build(
  position: 2,
  content: "Il constitue le plus grand menhir du site des alignements de Carnac."
)
geant_du_manio_description_2.photo.attach(io:File.open('db/fixtures/megaliths/geant_du_manio/geant_du_manio_2.jpg'), filename: 'geant_du_manio_2.jpg', content_type: 'image/jpg')

geant_du_manio_description_3 = geant_du_manio.descriptions.build(
  position: 3,
  content: "A quelques mètres se trouvent le quadrilatère du Manio."
)
geant_du_manio_description_3.photo.attach(io:File.open('db/fixtures/megaliths/geant_du_manio/geant_du_manio_3.jpg'), filename: 'geant_du_manio_3.jpg', content_type: 'image/jpg')

geant_du_manio_description_4 = geant_du_manio.descriptions.build(
  position: 4,
  content: "Ses pierres délimitaient à l'origine un tumulus, aujourd'hui disparu."
)
geant_du_manio_description_4.photo.attach(io:File.open('db/fixtures/megaliths/geant_du_manio/geant_du_manio_4.jpg'), filename: 'geant_du_manio_4.jpg', content_type: 'image/jpg')

geant_du_manio.save!

puts "Géant du Manio created!"




puts "Creating Cairn de Kercado..."

cairn_de_kercado = Megalith.new(
  name: "Cairn de Kercado",
  address: "Carnac",
  category: "Cairn",
  latitude: "47.59577",
  longitude: "-3.05436"
)
cairn_de_kercado_1 = cairn_de_kercado.descriptions.build(
  position: 1,
  content: "Ce monument circulaire se trouve au sud de l'alignement de Kermario."
)
cairn_de_kercado_1.photo.attach(io:File.open('db/fixtures/megaliths/cairn_de_kercado/cairn_de_kercado_1.jpg'), filename: 'cairn_de_kercado_1.jpg', content_type: 'image/jpg')

cairn_de_kercado_2 = cairn_de_kercado.descriptions.build(
  position: 2,
  content: "C'est l'un des rares dolmens de Bretagne à avoir conservé son cairn d'origine."
)
cairn_de_kercado_2.photo.attach(io:File.open('db/fixtures/megaliths/cairn_de_kercado/cairn_de_kercado_2.jpg'), filename: 'cairn_de_kercado_2.jpg', content_type: 'image/jpg')

cairn_de_kercado_3 = cairn_de_kercado.descriptions.build(
  position: 3,
  content: "De nombreuses gravures d'époque (haches, arcs, bateaux, cétacé) sont visibles à l'aide d'une lumière rasante."
)
cairn_de_kercado_3.photo.attach(io:File.open('db/fixtures/megaliths/cairn_de_kercado/cairn_de_kercado_3.jpg'), filename: 'cairn_de_kercado_3.jpg', content_type: 'image/jpg')

cairn_de_kercado_4 = cairn_de_kercado.descriptions.build(
  position: 4,
  content: "Un cromlech entoure le cairn qui est aussi surmonté d'un menhir."
)
cairn_de_kercado_4.photo.attach(io:File.open('db/fixtures/megaliths/cairn_de_kercado/cairn_de_kercado_4.jpg'), filename: 'cairn_de_kercado_4.jpg', content_type: 'image/jpg')


cairn_de_kercado.save!

puts "Cairn de Kercado created!"



puts "Creating Enceinte du Ménec..."

enceinte_du_menec = Megalith.new(
  name: "Enceinte du Ménec",
  address: "Carnac",
  category: "Menhir",
  # description: "  ",
  latitude: "47.59161",
  longitude:"-3.08567"
)

enceinte_du_menec_1 = enceinte_du_menec.descriptions.build(
  position: 1,
  content: "Cet espace est situé à l'une des extrêmité des plus grandes files de menhirs organisées sur le même plan que Kerlescan mais sur près d'un kilomètres (conservant plus de 1 000 menhirs)."
)
enceinte_du_menec_1.photo.attach(io:File.open('db/fixtures/megaliths/enceinte_du_menec/enceinte_du_menec_1.jpg'), filename: 'enceinte_du_menec_1.jpg', content_type: 'image/jpg')

enceinte_du_menec_2 = enceinte_du_menec.descriptions.build(
  position: 2,
  content: "On peut voir les menhirs acollés derrière la crêperie et s'apercevoir que le village s'est installé au milieu de ce cromlech."
)
enceinte_du_menec_2.photo.attach(io:File.open('db/fixtures/megaliths/enceinte_du_menec/enceinte_du_menec_2.jpg'), filename: 'enceinte_du_menec_2.jpg', content_type: 'image/jpg')

enceinte_du_menec_3 = enceinte_du_menec.descriptions.build(
  position: 3,
  content: "Ces enceintes jouaient un rôle important dans l'utilisation du lieu."
)
enceinte_du_menec_3.photo.attach(io:File.open('db/fixtures/megaliths/enceinte_du_menec/enceinte_du_menec_3.jpg'), filename: 'enceinte_du_menec_3.jpg', content_type: 'image/jpg')

enceinte_du_menec_4 = enceinte_du_menec.descriptions.build(
  position: 4,
  content: "La plupart des menhirs de l'enceinte a été relevée. Un petit carré fait de mortier de brique rouge les indique."
)
enceinte_du_menec_4.photo.attach(io:File.open('db/fixtures/megaliths/enceinte_du_menec/enceinte_du_menec_4.jpg'), filename: 'enceinte_du_menec_4.jpg', content_type: 'image/jpg')

enceinte_du_menec.save!

puts "Enceinte du Ménec created!"


puts "Creating Tumulus Saint-Michel..."

tumulus_saint_michel = Megalith.new(
  name: "Tumulus Saint-Michel",
  address: "Carnac",
  category: "Tumulus",
  # description: "  Vers 1900, l'archéologue Zacharie Le Rouzic fouilla à nouveau le tumulus Saint-Michel et découvrit un second dolmen et une quinzaine de petits coffres de pierres, révélant ainsi la complexité de ce monument, sans doute réservé à une élite princière et édifié vers 5 000 av. J.-C. au Néolithique.",
  latitude: "47.588",
  longitude:"-3.0733"
)

tumulus_saint_michel_1 = tumulus_saint_michel.descriptions.build(
  position: 1,
  content: "Le tumulus Saint-Michel est une butte artificielle de terre et de pierres de 125 mètres de long, 50 mètres de large et 10 mètres de hauteur."
)
tumulus_saint_michel_1.photo.attach(io:File.open('db/fixtures/megaliths/tumulus_saint_michel/tumulus_saint_michel_1.jpg'), filename: 'tumulus_saint_michel_1.jpg', content_type: 'image/jpg')

tumulus_saint_michel_2 = tumulus_saint_michel.descriptions.build(
  position: 2,
  content: "Exploré en 1862, les chercheurs y ont trouvé un caveau central renfermant un mobilier funéraire assez prestigieux : haches polies en jadéite et fibrolite, et un collier de perles et de pendeloques en variscite."
)
tumulus_saint_michel_2.photo.attach(io:File.open('db/fixtures/megaliths/tumulus_saint_michel/tumulus_saint_michel_2.jpg'), filename: 'tumulus_saint_michel_2.jpg', content_type: 'image/jpg')

tumulus_saint_michel_3 = tumulus_saint_michel.descriptions.build(
  position: 3,
  content: "Vers 1900, l'archéologue Zacharie Le Rouzic fouilla à nouveau le tumulus Saint-Michel."
)
tumulus_saint_michel_3.photo.attach(io:File.open('db/fixtures/megaliths/tumulus_saint_michel/tumulus_saint_michel_3.jpg'), filename: 'tumulus_saint_michel_3.jpg', content_type: 'image/jpg')

tumulus_saint_michel_4 = tumulus_saint_michel.descriptions.build(
  position: 4,
  content: "Il découvrit un second dolmen et une quinzaine de petits coffres de pierres, révélant ainsi la complexité de ce monument, sans doute réservé à une élite princière et édifié vers 5 000 av. J.-C. au Néolithique."
)
tumulus_saint_michel_4.photo.attach(io:File.open('db/fixtures/megaliths/tumulus_saint_michel/tumulus_saint_michel_4.jpg'), filename: 'tumulus_saint_michel_4.jpg', content_type: 'image/jpg')

enceinte_du_menec.save!

tumulus_saint_michel.save!

puts "Tumulus Saint-Michel created!"

puts "Carnac Megaliths created!"


# puts "Creating Monteneuf Megaliths..."

# puts "Creating Alignement de Kerlescan..."

# alignement_de_kerlescan = Megalith.new(
#   name: "Alignement de Kerlescan",
#   address: "Carnac",
#   category: "Menhir",
#   latitude: "47.60373",
#   longitude: "-3.05048"
# )

# alignement_de_kerlescan_description_1 = alignement_de_kerlescan.descriptions.build(
#   position: 1,
#   content: "En un coup d'oeil, découvrez comment sont construits les alignements de Carnac."
# )
# alignement_de_kerlescan_description_1.photo.attach(io:File.open('db/fixtures/megaliths/alignement_de_kerlescan/alignement_de_kerlescan_1.jpg'), filename: 'alignement_de_kerlescan_1.jpg', content_type: 'image/jpg')

# puts "Monteneuf Megaliths created!"



puts "Creating Carnac Steps..."

carnac_step_1 = Step.new(
  position: 1,
  question: "A quelle époque, les mégalithes ont-ils été créés ?",
  answer_1: "L'époque gauloise",
  answer_2: "Le Néolithique",
  answer_3: "L'Antiquité",
  answer_4: "L'ère mégalithique",
  correct_answer: 2,
  course: carnac_course,
  megalith: alignement_de_kerlescan,
  access_description: "Pour vous rendre ici, faites bouger vos jambes de manière asynchrone."
  # access_description: "Stationnez votre véhicule sur le parking suité en contrebas du centre équestre "Les menhirs""
)
carnac_step_1.save!

carnac_step_2 = Step.new(
  position: 2,
  question: "Quelles traces les archéologues retrouvent-ils rarement dans les fouilles ?",
  answer_1: "Des poteries",
  answer_2: "Des outils en silex",
  answer_3: "Des haches en pierres polies",
  answer_4: "Les ossements",
  correct_answer: 4,
  course: carnac_course,
  megalith: geant_du_manio,
  access_description: "Le sentier vers le Géant du Manio démarre à partir du parking suité en contrebas du centre équestre Les menhirs"
)
carnac_step_2.save!

carnac_step_3 = Step.new(
  position: 3,
  question: "Quelle étape de la fabrication d'un menhir n'est pas à sa place ?",
  answer_1: "La préparation du bloc",
  answer_2: "Le transport",
  answer_3: "Le levage du menhir",
  answer_4: "L'extraction",
  correct_answer: 4,
  course: carnac_course,
  megalith: cairn_de_kercado,
  access_description: "Poursuivez le sentier en direction des alignements du Manio. Une fois arrivé à la route, prenez à gauche sur 250 mètres jusqu'à l'allée qui vous mènera à Kercado. Distance 1km "
)
carnac_step_3.save!

carnac_step_4 = Step.new(
  position: 4,
  question: "Parmi les hypothèses suivantes, laquelle est la moins réaliste ?",
  answer_1: "Des esclaves ont bâti les mégalithes",
  answer_2: "Les mégalithes marquaient le territoire",
  answer_3: "Les Hommes se rassemblaient autour des menhirs",
  answer_4: "Cette civilisation était dirigée par des chefs",
  correct_answer: 1,
  course: carnac_course,
  megalith: enceinte_du_menec,
  access_description: "Retournez sur la route principale, prenez à droite jusqu'au parking où votre véhicule se trouve. Distance 800 mètres"
)
carnac_step_4.save!

carnac_step_5 = Step.new(
  position: 5,
  question: "Quelle activité pourrait être à l'origine de la naissance de la civilisation mégalithique ?",
  answer_1: "L'agriculture",
  answer_2: "La fabrication de hache en pierre polie",
  answer_3: "La fabrication de sel",
  answer_4: "L'élevage",
  correct_answer: 3,
  course: carnac_course,
  megalith: tumulus_saint_michel,
  access_description: "Prenez la direction du bourg de Carnac. Longez les alignements sur 3 kilomètres. Stationnez-vous sur le parking de la maison des mégalithes. A pied, dirigez vous vers le village du Ménec (suivez les plus grands menhirs)"
)
carnac_step_5.save!

puts "Carnac Steps created!"

puts "Creating Monteneuf Steps..."

monteneuf_step_1 = Step.new(
  position: 1,
  question: "A quelle époque, les mégalithes ont-ils été créés ?",
  answer_1: "L'époque gauloise",
  answer_2: "Le Néolithique",
  answer_3: "L'Antiquité",
  answer_4: "L'ère mégalithique",
  correct_answer: 2,
  course: monteneuf_course,
  megalith: alignement_de_kerlescan,
  access_description: "Pour vous rendre ici, faites bouger vos jambes de manière asynchrone."
  # access_description: "Stationnez votre véhicule sur le parking suité en contrebas du centre équestre "Les menhirs""
)
monteneuf_step_1.save!

monteneuf_step_2 = Step.new(
  position: 2,
  question: "Quelles traces les archéologues retrouvent-ils rarement dans les fouilles ?",
  answer_1: "Des poteries",
  answer_2: "Des outils en silex",
  answer_3: "Des haches en pierres polies",
  answer_4: "Les ossements",
  correct_answer: 4,
  course: monteneuf_course,
  megalith: geant_du_manio,
  access_description: "Le sentier vers le Géant du Manio démarre à partir du parking suité en contrebas du centre équestre Les menhirs"
)
monteneuf_step_2.save!

monteneuf_step_3 = Step.new(
  position: 3,
  question: "Quelle étape de la fabrication d'un menhir n'est pas à sa place ?",
  answer_1: "La préparation du bloc",
  answer_2: "Le transport",
  answer_3: "Le levage du menhir",
  answer_4: "L'extraction",
  correct_answer: 4,
  course: monteneuf_course,
  megalith: cairn_de_kercado,
  access_description: "Poursuivez le sentier en direction des alignements du Manio. Une fois arrivé à la route, prenez à gauche sur 250 mètres jusqu'à l'allée qui vous mènera à Kercado. Distance 1km "
)
monteneuf_step_3.save!

monteneuf_step_4 = Step.new(
  position: 4,
  question: "Parmi les hypothèses suivantes, laquelle est la moins réaliste ?",
  answer_1: "Des esclaves ont bâti les mégalithes",
  answer_2: "Les mégalithes marquaient le territoire",
  answer_3: "Les Hommes se rassemblaient autour des menhirs",
  answer_4: "Cette civilisation était dirigée par des chefs",
  correct_answer: 1,
  course: monteneuf_course,
  megalith: enceinte_du_menec,
  access_description: "Retournez sur la route principale, prenez à droite jusqu'au parking où votre véhicule se trouve. Distance 800 mètres"
)
monteneuf_step_4.save!

monteneuf_step_5 = Step.new(
  position: 5,
  question: "Quelle activité pourrait être à l'origine de la naissance de la civilisation mégalithique ?",
  answer_1: "L'agriculture",
  answer_2: "La fabrication de hache en pierre polie",
  answer_3: "La fabrication de sel",
  answer_4: "L'élevage",
  correct_answer: 3,
  course: monteneuf_course,
  megalith: tumulus_saint_michel,
  access_description: "Prenez la direction du bourg de Carnac. Longez les alignements sur 3 kilomètres. Stationnez-vous sur le parking de la maison des mégalithes. A pied, dirigez vous vers le village du Ménec (suivez les plus grands menhirs)"
)
monteneuf_step_5.save!

puts "Monteneuf Steps created!"


puts "Creating UserCourses..."

lomig_carnac = UserCourse.new(
  course: carnac_course,
  user: lomig,
  done: false
)
lomig_carnac.save!

lomig_monteneuf = UserCourse.new(
  course: monteneuf_course,
  user: lomig,
  done: true
)
lomig_monteneuf.save!

lomig_saint_just = UserCourse.new(
  course: saint_just_course,
  user: lomig,
  done: true
)
lomig_saint_just.save!

lomig_erdeven = UserCourse.new(
  course: erdeven_course,
  user: lomig,
  done: true
)
lomig_erdeven.save!

puts "UserCourses created!"



puts "Creating UserSteps..."

lomig_carnac_step_1 = UserStep.new(
  step: carnac_step_1,
  user_course: lomig_carnac,
  quiz_answer: "L'Antiquité",
  done: true
)
lomig_carnac_step_1.save!

lomig_carnac_step_2 = UserStep.new(
  step: carnac_step_2,
  user_course: lomig_carnac,
  quiz_answer: "Les ossements",
  done: true
)
lomig_carnac_step_2.save!

lomig_carnac_step_3 = UserStep.new(
  step: carnac_step_3,
  user_course: lomig_carnac,
  quiz_answer: "L'extraction",
  done: true
)
lomig_carnac_step_3.save!

lomig_carnac_step_4 = UserStep.new(
  step: carnac_step_4,
  user_course: lomig_carnac,
  done: false
)
lomig_carnac_step_4.save!

lomig_carnac_step_5 = UserStep.new(
  step: carnac_step_5,
  user_course: lomig_carnac,
  done: false
)
lomig_carnac_step_5.save!

puts "UserSteps created!"





puts "Finished!"

