# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Author.create(id: 1, name:"Tolkien", dob:19350412, nationality:"American", awards:"Awards...", biography:"He wrote the lord of the rings series. This DOB is so wrong...", image_url:"tolkien.jpg")
Author.create(id: 2, name:"Rand", dob:18191212, nationality:"German", awards:"Awards...", biography:"She wrote something important too. DOB is also wrong...", image_url:"rand.jpg")
Author.create(id: 3, name:"Card", dob:17890913, nationality:"American", awards:"Awards...", biography:"He wrote something about something that people cared about. DOB so, so wrong...", image_url:"card.jpg")
Author.create(id: 4, name:"Orwell", dob:18010222, nationality:"Russian", awards:"Awards...", biography:"He wrote about depressing stuff that a lot of people probably cared about. DOB...lol", image_url:"orwell.jpg")
Author.create(id: 5, name:"Martin", dob:19650730, nationality:"Westeroc", awards:"Highborn", biography:"He's the man. Hands down the GOAT. DOB is definitely wrong but that don't matter.", image_url:"martin.gif")

Book.create(isbn: '9780582186552', title: 'The Hobbit', author_id: '1', genre: 'Fiction',
    abstract: 'A precursor to many sequels ',
	pages:317, image_cover_url: 'http://upload.wikimedia.org/wikipedia/en/4/4a/TheHobbit_FirstEdition.jpg',
	published_on: '01/01/1966',
	total_in_library:13)

Book.create(isbn: '9780451069801', title: 'Atlas Struggled', author_id: '2', genre: 'Fiction',
    abstract: 'Some book a dude wrote ',
	pages:317, image_cover_url: 'http://www.skepticmoney.com/wp-content/uploads/2012/08/atlas-shrugged-cover.jpg',
	published_on: '08/01/1999',
	total_in_library:5)

Book.create(isbn: '9781476770383', title: 'Revival', author_id: '3', genre: 'Horror',
    abstract: 'A dark and electrifying novel about addiction, fanaticism, and what might exist on the other side of life. In a small New England town, over half a century ago, a shadow falls over a small boy playing with his toy soldiers. Jamie Morton looks up to see a striking man, the new minister. ',
	pages:416, image_cover_url: 'data:image/jpeg;base64,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',
	published_on: '11/11/2014',
	total_in_library:3)
Book.create(isbn: '9780451524935', title: '1984', author_id: '4', genre: 'Horror',
    abstract: 'Written in 1948, 1984 was George Orwell’s chilling prophecy about the future. And while 1984 has come and gone, Orwell’s narrative is timelier than ever. 1984 presents a startling and haunting vision of the world, so powerful that it is completely convincing from start to finish. No one can deny the power of this novel, its hold on the imaginations of multiple generations of readers, or the resiliency',
	pages:350, image_cover_url: 'http://upload.wikimedia.org/wikipedia/en/thumb/c/c3/1984first.jpg/220px-1984first.jpg',
	published_on: '06/08/1949',
	total_in_library:2)


