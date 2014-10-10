# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Author.create(name:"Tolkien", dob:19350412, nationality:"American", awards:"Awards...", biography:"He wrote the lord of the rings series. This DOB is so wrong...", image_url:"tolkien.jpg")
Author.create(name:"Rand", dob:18191212, nationality:"German", awards:"Awards...", biography:"She wrote something important too. DOB is also wrong...", image_url:"rand.jpg")
Author.create(name:"Card", dob:17890913, nationality:"American", awards:"Awards...", biography:"He wrote something about something that people cared about. DOB so, so wrong...", image_url:"card.jpg")
Author.create(name:"Orwell", dob:18010222, nationality:"Russian", awards:"Awards...", biography:"He wrote about depressing stuff that a lot of people probably cared about. DOB...lol", image_url:"orwell.jpg")
Author.create(name:"Martin", dob:19650730, nationality:"Westeroc", awards:"Highborn", biography:"He's the man. Hands down the GOAT. DOB is definitely wrong but that don't matter.", image_url:"martin.gif")
