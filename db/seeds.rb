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


puts "Creating User..."
pierref = User.new(email: "pierref@mail.com", password: "azerty")
# pierref.photo.attach(io:File.open('db/fixtures/users/pierre.jpg'), filename: 'pierre.jpg', content_type: 'image/jpg')
pierref.save!

lomig = User.new(email: "lomig@mail.com", password: "azerty")
# lomig.photo.attach(io:File.open('db/fixtures/users/lomig.jpg'), filename: 'lomig.jpg', content_type: 'image/jpg')
lomig.save!

pierreg = User.new(email: "pierreg@mail.com", password: "azerty")
# pierreg.photo.attach(io:File.open('db/fixtures/users/pierreg.jpg'), filename: 'pierreg.jpg', content_type: 'image/jpg')
pierreg.save!
puts "User created!"



puts "Creating Course..."

carnac_course = Course.new(
  city: "Carnac",
  name: "course découverte Carnac",
  mobility_access: true ,
  duration_in_minutes: 165,
  description: "Parcours le plus populaire, permet une marche facile pour découvrir la région de Carnac et ses momuments"
)
carnac_course.save!

monteneuf_course = Course.new(
  city: "Monteneuf",
  name: "course découverte Monteneuf",
  mobility_access: true ,
  duration_in_minutes: 165,
  description: "Parcours le plus populaire, permet une marche facile pour découvrir la région de Monteneuf et ses momuments"
)
monteneuf_course.save!

puts "Course created!"


# pierref.photo.attach(io:File.open('db/fixtures/users/pierre.jpg'), filename: 'pierre.jpg', content_type: 'image/jpg')

puts "Creating Megalith..."

alignement_de_kerlescan = Megalith.new(
  name: "Alignement de Kerlescan",
  address: "Carnac",
  category: "Menhir",
  description: "L'alignement est composé de 555 pierres subsistantes, réparties sur 13 files. L'ensemble se déroule sur environ 350 m de longueur, pour 140 m de largeur dans sa partie la plus étroite, à l'est. L'alignement est globalement orienté selon un axe est-ouest, rompant l'orientation des alignements situées plus à l'est, dont l'orientation générale est nord-est - sud-ouest.Les files les plus méridionales sont disposées en éventail. Bien que ce ne soit pas le cas, les files septentrionales donnent cette même impression, du fait de la décroissance de leurs longueurs.",
  latitude: "47.60373",
  longitude: "-3.05048"
)
alignement_de_kerlescan.photo.attach(io:File.open('db/fixtures/megaliths/alignement_de_kerlescan.jpg'), filename: 'alignement_de_kerlescan.jpg', content_type: 'image/jpg')
alignement_de_kerlescan.save!

geant_du_manio = Megalith.new(
  name: "Géant du Manio",
  address: "Carnac",
  category: "Menhir",
  description: "Le menhir est situé au nord de l'alignement du Manio, à environ 50 m au sud du quadrilatère du Manio, dont il constitue un menhir indicateur.Il s'agit d'une pierre dressée d'environ 6,5 m de haut, mais qui devait atteindre la hauteur de 23 m avant son érosion (foudre) pour une masse originelle estimée à 350 tonnes. De par ses proportions, il est estimé devoir sa position et sa place sur le site au travail coordonné de 1 800 hommes. Il constitue le plus grand menhir du site des alignements de Carnac.Il doit son nom à sa forme qui rappelle celle d'une tête.Il nous est apparent sous sa forme brisée par la foudre.",
  latitude: "47.6036",
  longitude:"-3.05598"
)
geant_du_manio.photo.attach(io:File.open('db/fixtures/megaliths/geant_du_manio.jpg'), filename:'geant_du_manio.jpg', content_type: 'image/jpg')
geant_du_manio.save!

cairn_de_kercado = Megalith.new(
  name: "Cairn de Kercado",
  address: "Carnac",
  category: "Cairn",
  description: "Le cairn de Kercado est un monument mégalithique se trouvant au sud de l'alignement de Kermario, sur la commune de Carnac, dans le Morbihan, en Bretagne. Circulaire, il abrite un dolmen remarquablement conservé, à couloir et à chambre simple, bien différenciée.Des datations hautes livrées par le carbone 14 (5200-4360 avant notre ère) ont fait un moment regarder le dolmen comme le plus ancien d'Europe. N'ayant pu recevoir confirmation, elles ne sont pas retenues par les archéologues. La diversité du mobilier traduit de nombreuses réutilisations du site, du Néolithique moyen au Campaniforme.",
  latitude: "47.59577",
  longitude: "-3.05436"
)
cairn_de_kercado.photo.attach(io:File.open('db/fixtures/megaliths/tumulus_de_kercado.jpg'), filename:'tumulus_de_kercado.jpg', content_type: 'image/jpg')
cairn_de_kercado.save!


enceinte_du_menec = Megalith.new(
  name: "Enceinte du Ménec",
  address: "Carnac",
  category: "Menhir",
  description: "L'alignement est composé de plus de 1 170 de menhirs, répartis en 11 rangées, sur une distance d'environ 950 m et une largeur d'environ 70 (à l'est) à 100 m (à l'ouest)3. Cet ensemble est globalement orienté suivant un axe sud-ouest - nord-est. Leur taille décroît, d'ouest — où certains atteignent les 4 m — en est.Ces 1 170 menhirs sont répartis en 70 dans un hémicycle occidental (menhirs jointifs, « en particulier derrière la crêperie dont le propriétaire est l'un des défenseurs d'une occupation litigieuse de cet espace mégalithique »), 1075 en 11 lignes de long et 150 m de large et 25 rescapés d'un hémicycle oriental. L'hémicycle occidental correspond à un cromlech.Cet ensemble mégalithique a longtemps été interprété comme un temple astronomique. L'hypothèse actuelle, selon Serge Cassen, directeur de recherche CNRS, repose sur une autre façon de regarder cet alignement et les pierres jointives du cromlech : « L'idée, très simple, est de dire que les espaces entre les pierres ont autant de sens que les pierres elles-mêmes. On serait là face à des aménagements de passage, des … pierres seuil qui matérialiseraient un passage. Et on traverse comme on traverse une frontière ».",
  latitude: "47.59161",
  longitude:"-3.08567"
)
enceinte_du_menec.photo.attach(io:File.open('db/fixtures/megaliths/enceinte_du_menec.jpg'), filename:'enceinte_du_menec.jpg', content_type: 'image/jpg')
enceinte_du_menec.save!

tumulus_saint_michel = Megalith.new(
  name: "Tumulus Saint-Michel",
  address: "Carnac",
  category: "Tumulus",
  description: "Le tumulus Saint-Michel est formé d'une butte de terre et de pierres de 125 mètres de long, 50 mètres de large et 10 mètres de hauteur. Exploré en 1862, les chercheurs y ont trouvé un caveau central renfermant un mobilier funéraire assez prestigieux : haches polies en jadéite et fibrolite, et un collier de perles et de pendeloques en variscite. Vers 1900, l'archéologue Zacharie Le Rouzic fouilla à nouveau le tumulus Saint-Michel et découvrit un second dolmen et une quinzaine de petits coffres de pierres, révélant ainsi la complexité de ce monument, sans doute réservé à une élite princière et édifié vers 5 000 av. J.-C. au Néolithique. Il fait l’objet d’un classement au titre des monuments historiques depuis 1889. La bataille du tumulus Saint-Michel se déroula pendant la Chouannerie, lors de l'expédition de Quiberon le 27 juin 1795 et se termina par une victoire des Chouans commandés par Vincent de Tinténiac sur les Républicains.",
  latitude: "47.588",
  longitude:"-3.0733"
)
tumulus_saint_michel.photo.attach(io:File.open('db/fixtures/megaliths/tumulus_saint_michel.jpg'), filename:'tumulus_saint_michel.jpg', content_type: 'image/jpg')
tumulus_saint_michel.save!

puts "Megalith created!"



puts "Creating Step..."

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
  question: "A quelle époque, les mégalithes ont-ils été créés ?",
  answer_1: "L'époque gauloise",
  answer_2: "Le Néolithique",
  answer_3: "L'Antiquité",
  answer_4: "L'ère mégalithique",
  correct_answer: 2,
  course: carnac_course,
  megalith: alignement_de_kerlescan
)
carnac_step_2.save!

carnac_step_3 = Step.new(
  position: 3,
  question: "A quelle époque, les mégalithes ont-ils été créés ?",
  answer_1: "L'époque gauloise",
  answer_2: "Le Néolithique",
  answer_3: "L'Antiquité",
  answer_4: "L'ère mégalithique",
  correct_answer: 2,
  course: carnac_course,
  megalith: alignement_de_kerlescan
)
carnac_step_3.save!

carnac_step_4 = Step.new(
  position: 4,
  question: "A quelle époque, les mégalithes ont-ils été créés ?",
  answer_1: "L'époque gauloise",
  answer_2: "Le Néolithique",
  answer_3: "L'Antiquité",
  answer_4: "L'ère mégalithique",
  correct_answer: 2,
  course: carnac_course,
  megalith: alignement_de_kerlescan
)
carnac_step_4.save!

carnac_step_5 = Step.new(
  position: 5,
  question: "A quelle époque, les mégalithes ont-ils été créés ?",
  answer_1: "L'époque gauloise",
  answer_2: "Le Néolithique",
  answer_3: "L'Antiquité",
  answer_4: "L'ère mégalithique",
  correct_answer: 2,
  course: carnac_course,
  megalith: alignement_de_kerlescan
)
carnac_step_5.save!

puts "Step created!"

puts "Creating UserCourse..."

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

puts "UserCourse created!"



puts "Creating UserStep..."

lomig_carnac_step_1 = UserStep.new(
  step: carnac_step_1,
  user_course: lomig_carnac,
  done: true,
  quiz_answer: "L'Antiquité"
)
lomig_carnac_step_1.save!

lomig_carnac_step_2 = UserStep.new(
  step: carnac_step_2,
  user_course: lomig_carnac,
  done: false
)
lomig_carnac_step_2.save!

lomig_carnac_step_3 = UserStep.new(
  step: carnac_step_3,
  user_course: lomig_carnac,
  done: false
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

puts "UserStep created!"





puts "Finished!"

