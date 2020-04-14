# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning database..."
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
  city: "Carnac",
  name: "course découverte Carnac",
  mobility_access: true ,
  duration_in_minutes: 165,
  description: "Parcours le plus populaire, permet une marche facile pour découvrir la région de Carnac et ses momuments"
)
carnac_course.photo.attach(io:File.open('db/fixtures/courses/carnac_course.jpg'), filename: 'carnac_course.jpg', content_type: 'image/jpg')
carnac_course.save!

monteneuf_course = Course.new(
  city: "Monteneuf",
  name: "course découverte Monteneuf",
  mobility_access: true ,
  duration_in_minutes: 165,
  description: "Parcours le plus populaire, permet une marche facile pour découvrir la région de Monteneuf et ses momuments"
)
monteneuf_course.photo.attach(io:File.open('db/fixtures/courses/monteneuf_course.jpg'), filename: 'monteneuf_course.jpg', content_type: 'image/jpg')
monteneuf_course.save!

saint_just_course = Course.new(
  city: "Saint-Just",
  name: "course découverte Saint-Just",
  mobility_access: true ,
  duration_in_minutes: 165,
  description: "Parcours le plus populaire, permet une marche facile pour découvrir la région de Saint-Just et ses momuments"
)
saint_just_course.photo.attach(io:File.open('db/fixtures/courses/saint_just_course.jpg'), filename: 'saint_just_course.jpg', content_type: 'image/jpg')
saint_just_course.save!

locmariaquer_course = Course.new(
  city: "Locmariaquer",
  name: "course découverte Locmariaquer",
  mobility_access: true ,
  duration_in_minutes: 165,
  description: "Parcours le plus populaire, permet une marche facile pour découvrir la région de Locmariaquer et ses momuments"
)
locmariaquer_course.photo.attach(io:File.open('db/fixtures/courses/locmariaquer_course.jpg'), filename: 'locmariaquer_course.jpg', content_type: 'image/jpg')
locmariaquer_course.save!

erdeven_course = Course.new(
  city: "Erdeven",
  name: "course découverte Erdeven",
  mobility_access: true ,
  duration_in_minutes: 165,
  description: "Parcours le plus populaire, permet une marche facile pour découvrir la région de Erdeven et ses momuments"
)
erdeven_course.photo.attach(io:File.open('db/fixtures/courses/erdeven_course.jpg'), filename: 'erdeven_course.jpg', content_type: 'image/jpg')
erdeven_course.save!

puts "Courses created!"


# pierref.photo.attach(io:File.open('db/fixtures/users/pierre.jpg'), filename: 'pierre.jpg', content_type: 'image/jpg')

puts "Creating Megaliths..."

alignement_de_kerlescan = Megalith.new(
  name: "Alignement de Kerlescan",
  address: "Carnac",
  category: "Menhir",
  description: "En un coup d'oeil, découvrez comment sont construits les alignements de Carnac. Actuellement, 555 pierres se répartissent sur 13 files. Les menhirs sont disposés en éventail et en ordre croissant vers l'enceinte. Au nord de l'enceinte se trouve un tumulus discret long de 35 mètres. Un menhir en indique l'extrêmité",
  latitude: "47.60373",
  longitude: "-3.05048"
)
alignement_de_kerlescan.photo.attach(io:File.open('db/fixtures/megaliths/alignement_de_kerlescan.jpg'), filename: 'alignement_de_kerlescan.jpg', content_type: 'image/jpg')
alignement_de_kerlescan.save!

geant_du_manio = Megalith.new(
  name: "Géant du Manio",
  address: "Carnac",
  category: "Menhir",
  description: "Il s'agit d'une pierre dressée d'environ 6,5 m de haut Il constitue le plus grand menhir du site des alignements de Carnac. A quelques mètres se trouvent le quadrilatère du Manio. Ses pierres délimitaient à l'origine un tumulus, aujourd'hui disparu.",
  latitude: "47.6036",
  longitude:"-3.05598"
)
geant_du_manio.photo.attach(io:File.open('db/fixtures/megaliths/geant_du_manio.jpg'), filename:'geant_du_manio.jpg', content_type: 'image/jpg')
geant_du_manio.save!

cairn_de_kercado = Megalith.new(
  name: "Cairn de Kercado",
  address: "Carnac",
  category: "Cairn",
  description: "Ce monument circulaire se trouve au sud de l'alignement de Kermario. C'est l'un des rares dolmens de Bretagne à avoir conservé son cairn d'origine. De nombreuses gravures d'époque (haches, arcs, bateaux, cétacé) sont visibles à l'aide d'une lumière rasante.",
  latitude: "47.59577",
  longitude: "-3.05436"
)
cairn_de_kercado.photo.attach(io:File.open('db/fixtures/megaliths/tumulus_de_kercado.jpg'), filename:'tumulus_de_kercado.jpg', content_type: 'image/jpg')
cairn_de_kercado.save!


enceinte_du_menec = Megalith.new(
  name: "Enceinte du Ménec",
  address: "Carnac",
  category: "Menhir",
  description: "Cet espace est situé à l'une des extrêmité des plus grandes files de menhirs organisées sur le même plan que Kerlescan mais sur près d'un kilomètres (conservant plus de 1 000 menhirs). On peut voir les menhirs acollés derrière la crêperie et s'apercevoir que le village s'est installé au milieu de ce cromlech. Ces enceintes jouaient un rôle important dans l'utilisation du lieu.",
  latitude: "47.59161",
  longitude:"-3.08567"
)
enceinte_du_menec.photo.attach(io:File.open('db/fixtures/megaliths/enceinte_du_menec.jpg'), filename:'enceinte_du_menec.jpg', content_type: 'image/jpg')
enceinte_du_menec.save!

tumulus_saint_michel = Megalith.new(
  name: "Tumulus Saint-Michel",
  address: "Carnac",
  category: "Tumulus",
  description: "Le tumulus Saint-Michel est une butte artificielle de terre et de pierres de 125 mètres de long, 50 mètres de large et 10 mètres de hauteur. Exploré en 1862, les chercheurs y ont trouvé un caveau central renfermant un mobilier funéraire assez prestigieux : haches polies en jadéite et fibrolite, et un collier de perles et de pendeloques en variscite. Vers 1900, l'archéologue Zacharie Le Rouzic fouilla à nouveau le tumulus Saint-Michel et découvrit un second dolmen et une quinzaine de petits coffres de pierres, révélant ainsi la complexité de ce monument, sans doute réservé à une élite princière et édifié vers 5 000 av. J.-C. au Néolithique.",
  latitude: "47.588",
  longitude:"-3.0733"
)
tumulus_saint_michel.photo.attach(io:File.open('db/fixtures/megaliths/tumulus_saint_michel.jpg'), filename:'tumulus_saint_michel.jpg', content_type: 'image/jpg')
tumulus_saint_michel.save!

puts "Megaliths created!"



puts "Creating Steps..."

carnac_step_1 = Step.new(
  position: 1,
  question: "A quelle époque, les mégalithes ont-ils été créés ?",
  answer_1: "L'époque gauloise",
  answer_2: "Le Néolithique",
  answer_3: "L'Antiquité",
  answer_4: "L'ère mégalithique",
  correct_answer: 2,
  course_id: carnac_course[:id],
  megalith_id: alignement_de_kerlescan[:id]
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
  megalith: geant_du_manio
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
  megalith: cairn_de_kercado
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
  megalith: enceinte_du_menec
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
  megalith: tumulus_saint_michel
)
carnac_step_5.save!

puts "Steps created!"

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

