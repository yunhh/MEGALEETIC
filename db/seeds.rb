
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
#new user
pierref = User.new(email: "pierref@mail.com", password: "azerty")
pierref.photo.attach(io:File.open('db/fixtures/users/pierre.jpg'), filename: 'pierre.jpg', content_type: 'image/jpg')
pierref.save!

#average user
lomig = User.new(email: "lomig@mail.com", password: "azerty")
lomig.photo.attach(io:File.open('db/fixtures/users/lomig.jpg'), filename: 'lomig.jpg', content_type: 'image/jpg')
lomig.save!

#old user
pierreg = User.new(email: "pierreg@mail.com", password: "azerty")
pierreg.photo.attach(io:File.open('db/fixtures/users/pierreg.jpg'), filename: 'pierreg.jpg', content_type: 'image/jpg')
pierreg.save!
puts "Users created!"



puts "Creating Courses..."

carnac_course = Course.new(
  address: "Le Manio 56340 Carnac",
  name: "Les mystères de Carnac",
  mobility_access: true ,
  duration_in_minutes: 165,
  distance_in_kilometers: 6.7,
  rating: 5,
  description: "Découvrez les monuments légendaires de Carnac et leurs secrets."
)
carnac_course.photo.attach(io:File.open('db/fixtures/courses/carnac_course.jpg'), filename: 'carnac_course.jpg', content_type: 'image/jpg')
carnac_course.save!

carnac_course_2 = Course.new(
  address: "Keriaval 56340 Carnac",
  latitude: "47.6155",
  longitude: "-3.085734",
  name: "Les gravures de Mane Kerioned",
  mobility_access: false ,
  duration_in_minutes: 45,
  distance_in_kilometers: 0.2,
  rating: 4,
  description: "Découvrez les monuments de Mane Kerioned."
)
carnac_course_2.photo.attach(io:File.open('db/fixtures/courses/carnac_course_2.jpg'), filename: 'carnac_course_2.jpg', content_type: 'image/jpg')
carnac_course_2.save!

carnac_course_3 = Course.new(
  address: "Rue de Kerentrech 5340 Plouharnel",
  latitude: "47.60876",
  longitude: "-3.133230",
  name: "Les alignements de Sainte-Barbe",
  mobility_access: false ,
  duration_in_minutes: 35,
  distance_in_kilometers: 1.2,
  rating: 3,
  description: "Découvrez les alignements de Sainte-Barbe."
)
carnac_course_3.photo.attach(io:File.open('db/fixtures/courses/carnac_course_3.jpg'), filename: 'carnac_course_3.jpg', content_type: 'image/jpg')
carnac_course_3.save!

carnac_course_4 = Course.new(
  address: "13, Rue Eric Tabarly 5340 Plouharnel",
  latitude: "47.615329",
  longitude: "-3.083248",
  name: "Les alignements de Keriaval",
  mobility_access: true ,
  duration_in_minutes: 30,
  distance_in_kilometers: 0.8,
  rating: 3,
  description: "Découvrez les alignements de Keriaval."
)
carnac_course_4.photo.attach(io:File.open('db/fixtures/courses/carnac_course_4.jpg'), filename: 'carnac_course_4.jpg', content_type: 'image/jpg')
carnac_course_4.save!

carnac_course_5 = Course.new(
  address: "Belz",
  name: "Les mégalithes de Belz",
  mobility_access: false ,
  duration_in_minutes: 245,
  distance_in_kilometers: 12,
  rating: 3,
  description: "Découvrez les mégalithes de Belz."
)
carnac_course_5.photo.attach(io:File.open('db/fixtures/courses/carnac_course_5.jpg'), filename: 'carnac_course_5.jpg', content_type: 'image/jpg')
carnac_course_5.save!

carnac_course_6 = Course.new(
  address: "Crac'h",
  name: "Les mégalithes de Crac'h",
  mobility_access: false ,
  duration_in_minutes: 245,
  distance_in_kilometers: 12,
  rating: 3,
  description: "Découvrez les mégalithes de Crac'h."
)
carnac_course_6.photo.attach(io:File.open('db/fixtures/courses/carnac_course_6.jpg'), filename: 'carnac_course_6.jpg', content_type: 'image/jpg')
carnac_course_6.save!

carnac_course_7 = Course.new(
  address: "La Trinité sur Mer",
  name: "Les mégalithes de la Trinité sur Mer",
  mobility_access: true ,
  duration_in_minutes: 225,
  distance_in_kilometers: 8,
  rating: 3,
  description: "Découvrez les mégalithes de la Trinité sur Mer."
)
carnac_course_7.photo.attach(io:File.open('db/fixtures/courses/carnac_course_7.jpg'), filename: 'carnac_course_7.jpg', content_type: 'image/jpg')
carnac_course_7.save!

carnac_course_8 = Course.new(
  address: "Le Bono",
  name: "Les mégalithes du Bono",
  mobility_access: true ,
  duration_in_minutes: 225,
  distance_in_kilometers: 8,
  rating: 3,
  description: "Découvrez les mégalithes du Bono."
)
carnac_course_8.photo.attach(io:File.open('db/fixtures/courses/carnac_course_8.jpg'), filename: 'carnac_course_8.jpg', content_type: 'image/jpg')
carnac_course_8.save!

carnac_course_9 = Course.new(
  address: "Larmor-Baden",
  name: "Gavrinis ou la chapelle Sixtine du Néolithique",
  mobility_access: false ,
  duration_in_minutes: 120,
  distance_in_kilometers: 7,
  rating: 5,
  description: "Découvrez la beauté des gravures de Gavrinis."
)
carnac_course_9.photo.attach(io:File.open('db/fixtures/courses/carnac_course_9.jpg'), filename: 'carnac_course_9.jpg', content_type: 'image/jpg')
carnac_course_9.save!

carnac_course_10 = Course.new(
  address: "Arzon",
  name: "La presqu'île de Rhuys",
  mobility_access: false ,
  duration_in_minutes: 190,
  distance_in_kilometers: 20,
  rating: 4,
  description: "Découvrez les mégalithes de la presqu'île de Rhuys."
)
carnac_course_10.photo.attach(io:File.open('db/fixtures/courses/carnac_course_10.jpg'), filename: 'carnac_course_10.jpg', content_type: 'image/jpg')
carnac_course_10.save!

carnac_course_11 = Course.new(
  address: "Saint-Pierre-Quiberon",
  name: "La presqu'île de Quiberon",
  mobility_access: false ,
  duration_in_minutes: 145,
  distance_in_kilometers: 23,
  rating: 3,
  description: "Découvrez les mégalithes de la presqu'île de Quiberon."
)
carnac_course_11.photo.attach(io:File.open('db/fixtures/courses/carnac_course_11.jpg'), filename: 'carnac_course_11.jpg', content_type: 'image/jpg')
carnac_course_11.save!

carnac_course_12 = Course.new(
  address: "Rue Jean-Pierre Calloch 5340 Plouharnel",
  name: "Voyage à Rondossec",
  mobility_access: false ,
  duration_in_minutes: 35,
  distance_in_kilometers: 1.2,
  rating: 3,
  description: "Découvrez le tumulus de Rondossec et ses environs."
)
carnac_course_12.photo.attach(io:File.open('db/fixtures/courses/carnac_course_12.jpg'), filename: 'carnac_course_12.jpg', content_type: 'image/jpg')
carnac_course_12.save!

carnac_course_13 = Course.new(
  address: "34 Crucuny 5340 Carnac",
  name: "Dolmens à Carnac - partie I",
  mobility_access: false ,
  duration_in_minutes: 45,
  distance_in_kilometers: 2.5,
  rating: 3,
  description: "Découvrez quelques uns des plus beaux dolmens de Carnac."
)
carnac_course_13.photo.attach(io:File.open('db/fixtures/courses/carnac_course_13.jpg'), filename: 'carnac_course_13.jpg', content_type: 'image/jpg')
carnac_course_13.save!

carnac_course_14 = Course.new(
  address: "88 Route du Moustoir 56340 Carnac",
   name: "Dolmens à Carnac - partie II",
  mobility_access: false ,
  duration_in_minutes: 55,
  distance_in_kilometers: 3.5,
  rating: 4,
  description: "Découvrez quelques uns des plus beaux dolmens de Carnac."
)
carnac_course_14.photo.attach(io:File.open('db/fixtures/courses/carnac_course_14.jpg'), filename: 'carnac_course_14.jpg', content_type: 'image/jpg')
carnac_course_14.save!

carnac_course_15 = Course.new(
  address: "Crucuno 56340 Erdeven",
  name: "Dolmens à Erdeven - partie II",
  mobility_access: false ,
  duration_in_minutes: 55,
  distance_in_kilometers: 3.5,
  rating: 4,
  description: "Découvrez quelques uns des plus beaux dolmens de Erdeven."
)
carnac_course_15.photo.attach(io:File.open('db/fixtures/courses/carnac_course_15.jpg'), filename: 'carnac_course_15.jpg', content_type: 'image/jpg')
carnac_course_15.save!

carnac_course_16 = Course.new(
 address: "Varquès 56340 Erdeven",
  name: "Dolmens à Erdeven - partie II",
  mobility_access: false ,
  duration_in_minutes: 55,
  distance_in_kilometers: 3.5,
  rating: 4,
  description: "Découvrez quelques uns des plus beaux dolmens de Erdeven."
)
carnac_course_16.photo.attach(io:File.open('db/fixtures/courses/carnac_course_16.jpg'), filename: 'carnac_course_16.jpg', content_type: 'image/jpg')
carnac_course_16.save!




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
  address: "10 Allée des Cerisiers, Saint-Just",
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
  name: "Locmariaquer Les grands travaux mégalithiques",
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
  category: "Alignement Menhir",
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
  category: "Alignement Menhir",
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
  category: "Tumulus",
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

tumulus_saint_michel.save!

puts "Tumulus Saint-Michel created!"

puts "Carnac Megaliths created!"


puts "Creating Monteneuf Megaliths... (fake)"

puts "Creating Monteneuf 1 (fake)..."

# monteneuf_megalith_1 = Megalith.new(
#   name: "Mégalithe de Monteneuf 1",
#   category: "Menhir",
#   latitude: "47.88221",
#   longitude: "-2.18440"
# )

# monteneuf_megalith_1_description_1 = monteneuf_megalith_1.descriptions.build(
#   position: 1,
#   content: "Retrouvez prochainement les mégalithique de Monteneuf."
# )
# monteneuf_megalith_1_description_1.photo.attach(io:File.open('db/fixtures/megaliths/monteneuf_megalith_1/monteneuf_megalith_1.jpg'), filename: 'monteneuf_megalith_1.jpg', content_type: 'image/jpg')

puts "Monteneuf 1 created (fake)!"

puts "Monteneuf Megaliths created! (fake)"

# puts "Creating Saint-Just Megaliths... Coming soon !"

# saint_just_megaliths = Megalith.new(
#   name: "Les mégalithes de Saint-Just",
#   category: "Menhir",
#   latitude: "47.7649",
#   longitude:"-1.9740"
# )

# saint_just_megaliths_1 = saint_just_megaliths.descriptions.build(
#   position: 1,
#   content: "Retrouvez prochainement le parcours des mégalithes de Saint-Just..."
# )
# saint_just_megaliths_1.photo.attach(io:File.open('db/fixtures/courses/saint_just_course.jpg'), filename: 'saint_just_course.jpg', content_type: 'image/jpg')



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
  distance_in_kilometers: 0.2,
  duration_in_minutes: 30,


  access_description: "Stationnez votre véhicule sur le parking suité en contrebas du centre équestre Les menhirs.",
  explanations: "Si le Néolitique est la dernière période appartenant à la Préhistoire, c'est aussi celle où apparaissent les premières civilisations. Le phénomène mégalithique correspond aux premières architectures monumentales de l'histoire de l'humanité. Les plus vieux tumulus ont été construits 2 000 ans avant les premières pyramides !"

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
  distance_in_kilometers: 0.5,
  duration_in_minutes: 30,
  access_description: "Le sentier vers le Géant du Manio démarre à partir du parking suité en contrebas du centre équestre Les menhirs",
  explanations: "Si le Néolitique est la dernière période appartenant à la Préhistoire, c'est aussi celle où apparaissent les premières civilisations. Le phénomène mégalithique correspond aux premières architectures monumentales de l'histoire de l'humanité. Les plus vieux tumulus ont été construits 2 000 ans avant les premières pyramides !"
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
  distance_in_kilometers: 1.5,
  duration_in_minutes: 30,
  access_description: "Poursuivez le sentier en direction des alignements du Manio. Une fois arrivé à la route, prenez à gauche sur 250 mètres jusqu'à l'allée qui vous mènera à Kercado. Distance 1km ",
  explanations: "Si le Néolitique est la dernière période appartenant à la Préhistoire, c'est aussi celle où apparaissent les premières civilisations. Le phénomène mégalithique correspond aux premières architectures monumentales de l'histoire de l'humanité. Les plus vieux tumulus ont été construits 2 000 ans avant les premières pyramides !"
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
  distance_in_kilometers: 3,
  duration_in_minutes: 45,
  access_description: "Retournez sur la route principale, prenez à droite jusqu'au parking où votre véhicule se trouve. Distance 800 mètres",
  explanations: "Si le Néolitique est la dernière période appartenant à la Préhistoire, c'est aussi celle où apparaissent les premières civilisations. Le phénomène mégalithique correspond aux premières architectures monumentales de l'histoire de l'humanité. Les plus vieux tumulus ont été construits 2 000 ans avant les premières pyramides !"
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
  distance_in_kilometers: 1.5,
  duration_in_minutes: 30,
  access_description: "Prenez la direction du bourg de Carnac. Longez les alignements sur 3 kilomètres. Stationnez-vous sur le parking de la maison des mégalithes. A pied, dirigez vous vers le village du Ménec (suivez les plus grands menhirs)",
  explanations: "Si le Néolitique est la dernière période appartenant à la Préhistoire, c'est aussi celle où apparaissent les premières civilisations. Le phénomène mégalithique correspond aux premières architectures monumentales de l'histoire de l'humanité. Les plus vieux tumulus ont été construits 2 000 ans avant les premières pyramides !"
)
carnac_step_5.save!

puts "Carnac Steps created!"

puts "Creating Monteneuf Steps..."

monteneuf_step_1 = Step.new(
  position: 1,
  course: monteneuf_course,
  megalith: monteneuf_megalith_1,
  access_description: "Découvrez très prochainement les mégalithes de Monteneuf."
)
monteneuf_step_1.save!

monteneuf_step_2 = Step.new(
  position: 2,
  course: monteneuf_course,
  megalith: monteneuf_megalith_1,
  access_description: "Découvrez très prochainement les mégalithes de Monteneuf."
)
monteneuf_step_2.save!

monteneuf_step_3 = Step.new(
  position: 3,
  course: monteneuf_course,
  megalith: monteneuf_megalith_1,
  access_description: "Découvrez très prochainement les mégalithes de Monteneuf."
)
monteneuf_step_3.save!

monteneuf_step_4 = Step.new(
  position: 4,
  course: monteneuf_course,
  megalith: monteneuf_megalith_1,
  access_description: "Découvrez très prochainement les mégalithes de Monteneuf."
)
monteneuf_step_4.save!

monteneuf_step_5 = Step.new(
  position: 5,
  course: monteneuf_course,
  megalith: monteneuf_megalith_1,
  access_description: "Découvrez très prochainement les mégalithes de Monteneuf."
)
monteneuf_step_5.save!

puts "Monteneuf Steps created!"

puts "Creating Fake Steps..."

saint_just_step_1 = Step.new(
  course: saint_just_course,
  megalith:monteneuf_megalith_1
)
saint_just_step_1.save!

saint_just_step_2 = Step.new(
  course: saint_just_course,
  megalith:monteneuf_megalith_1
)
saint_just_step_2.save!

saint_just_step_3 = Step.new(
  course: saint_just_course,
  megalith:monteneuf_megalith_1
)
saint_just_step_3.save!

locmariaquer_step_1 = Step.new(
  course: locmariaquer_course,
  megalith:monteneuf_megalith_1
)
locmariaquer_step_1.save!

locmariaquer_step_2 = Step.new(
  course: locmariaquer_course,
  megalith:monteneuf_megalith_1
)
locmariaquer_step_2.save!

locmariaquer_step_3 = Step.new(
  course: locmariaquer_course,
  megalith:monteneuf_megalith_1
)
locmariaquer_step_3.save!

erdeven_step_1 = Step.new(
  course: erdeven_course,
  megalith:monteneuf_megalith_1
)
erdeven_step_1.save!

erdeven_step_2 = Step.new(
  course: erdeven_course,
  megalith:monteneuf_megalith_1
)
erdeven_step_2.save!

erdeven_step_3 = Step.new(
  course: erdeven_course,
  megalith:monteneuf_megalith_1
)
erdeven_step_3.save!




puts "Fake Steps created!"



puts "Creating UserCourses..."

puts "Creating Pierref : new user..."

pierref_carnac = UserCourse.new(
  course: carnac_course,
  user: pierref,
  done: false
)
pierref_carnac.save!

pierref_monteneuf = UserCourse.new(
  course: monteneuf_course,
  user: pierref,
  done: false
)
pierref_monteneuf.save!

pierref_saint_just = UserCourse.new(
  course: saint_just_course,
  user: pierref,
  done: false
)
pierref_saint_just.save!

pierref_erdeven = UserCourse.new(
  course: erdeven_course,
  user: pierref,
  done: false
)
pierref_erdeven.save!

puts "Creating Lomig : average user..."

lomig_carnac = UserCourse.new(
  course: carnac_course,
  user: lomig,
  done: false
)
lomig_carnac.save!

lomig_monteneuf = UserCourse.new(
  course: monteneuf_course,
  user: lomig,
  done: false
)
lomig_monteneuf.save!

lomig_saint_just = UserCourse.new(
  course: saint_just_course,
  user: lomig,
  done: false
)
lomig_saint_just.save!

lomig_erdeven = UserCourse.new(
  course: erdeven_course,
  user: lomig,
  done: true
)
lomig_erdeven.save!

puts "Creating Pierreg : old user..."

pierreg_carnac = UserCourse.new(
  course: carnac_course,
  user: pierreg,
  done: true
)
pierreg_carnac.save!

pierreg_monteneuf = UserCourse.new(
  course: monteneuf_course,
  user: pierreg,
  done: true
)
pierreg_monteneuf.save!

pierreg_saint_just = UserCourse.new(
  course: saint_just_course,
  user: pierreg,
  done: true
)
pierreg_saint_just.save!

pierreg_erdeven = UserCourse.new(
  course: erdeven_course,
  user: pierreg,
  done: true
)
pierreg_erdeven.save!

puts "UserCourses created!"



puts "Creating UserSteps..."

puts "PierreF No UserStep"

puts "Lomig UserStep - Erdeven complete - Carnac in progress"

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

lomig_erdeven_step_1 = UserStep.new(
  step: erdeven_step_1,
  user_course: lomig_erdeven,
  quiz_answer: "L'Antiquité",
  done: true
)
lomig_erdeven_step_1.save!

lomig_erdeven_step_2 = UserStep.new(
  step: erdeven_step_2,
  user_course: lomig_erdeven,
  quiz_answer: "Les ossements",
  done: true
)
lomig_erdeven_step_2.save!

lomig_erdeven_step_3 = UserStep.new(
  step: erdeven_step_3,
  user_course: lomig_erdeven,
  quiz_answer: "L'extraction",
  done: true
)
lomig_erdeven_step_3.save!

puts "PierreG UserStep - Erdeven Carnac Saint-Just Monteneuf complete"

pierreg_erdeven_step_1 = UserStep.new(
  step: erdeven_step_1,
  user_course: pierreg_erdeven,
  quiz_answer: "L'Antiquité",
  done: true
)
pierreg_erdeven_step_1.save!

pierreg_erdeven_step_2 = UserStep.new(
  step: erdeven_step_2,
  user_course: pierreg_erdeven,
  quiz_answer: "Les ossements",
  done: true
)
pierreg_erdeven_step_2.save!

pierreg_erdeven_step_3 = UserStep.new(
  step: erdeven_step_3,
  user_course: pierreg_erdeven,
  quiz_answer: "L'extraction",
  done: true
)
pierreg_erdeven_step_3.save!


pierreg_carnac_step_1 = UserStep.new(
  step: carnac_step_1,
  user_course: pierreg_carnac,
  quiz_answer: "L'Antiquité",
  done: true
)
pierreg_carnac_step_1.save!

pierreg_carnac_step_2 = UserStep.new(
  step: carnac_step_2,
  user_course: pierreg_carnac,
  quiz_answer: "Les ossements",
  done: true
)
pierreg_carnac_step_2.save!

pierreg_carnac_step_3 = UserStep.new(
  step: carnac_step_3,
  user_course: pierreg_carnac,
  quiz_answer: "L'extraction",
  done: true
)
pierreg_carnac_step_3.save!


pierreg_monteneuf_step_1 = UserStep.new(
  step: monteneuf_step_1,
  user_course: pierreg_monteneuf,
  quiz_answer: "L'Antiquité",
  done: true
)
pierreg_monteneuf_step_1.save!

pierreg_monteneuf_step_2 = UserStep.new(
  step: monteneuf_step_2,
  user_course: pierreg_monteneuf,
  quiz_answer: "Les ossements",
  done: true
)
pierreg_monteneuf_step_2.save!

pierreg_monteneuf_step_3 = UserStep.new(
  step: monteneuf_step_3,
  user_course: pierreg_monteneuf,
  quiz_answer: "L'extraction",
  done: true
)
pierreg_monteneuf_step_3.save!


pierreg_saint_just_step_1 = UserStep.new(
  step: saint_just_step_1,
  user_course: pierreg_saint_just,
  quiz_answer: "L'Antiquité",
  done: true
)
pierreg_saint_just_step_1.save!

pierreg_saint_just_step_2 = UserStep.new(
  step: saint_just_step_2,
  user_course: pierreg_saint_just,
  quiz_answer: "Les ossements",
  done: true
)
pierreg_saint_just_step_2.save!

pierreg_saint_just_step_3 = UserStep.new(
  step: saint_just_step_3,
  user_course: pierreg_saint_just,
  quiz_answer: "L'extraction",
  done: true
)
pierreg_saint_just_step_3.save!

puts "UserSteps created!"





puts "Finished!"

