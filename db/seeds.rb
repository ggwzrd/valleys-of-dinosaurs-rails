# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dino1 = Dinosaur.create( { name: "Iguanodon", age: 1 + rand(99), image_url: "http://images.dinosaurpictures.org.rsz.io/iguanodon_b35b.jpg" } )
dino2 = Dinosaur.create( { name: "Mosasaurus", age: 1 + rand(99), image_url: "http://images.dinosaurpictures.org.rsz.io/mosasaurus_hoffmani_by_olorotitan-d4esmfm_5c48.jpg" } )
dino3 = Dinosaur.create( { name: "Hungarosaurus", age: 1 + rand(99), image_url: "http://images.dinosaurpictures.org.rsz.io/nyito_4f23.jpg" } )

valley1 = Valley.create(name: "Ordesa Valley")
valley2 = Valley.create(name: "Waipi'o Valley")
valley3 = Valley.create(name: "The Valley of Geysers")

valley1.dinosaurs << [dino1]
valley1.save

valley2.dinosaurs << [dino2]
valley2.save

valley3.dinosaurs << [dino3]
valley3.save
