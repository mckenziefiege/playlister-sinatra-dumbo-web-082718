# Add seed data here. Seed your database with `rake db:seed`
Genre.destroy_all
Song.destroy_all
Artist.destroy_all

pop = Genre.find_or_create_by(name: "pop")
rock = Genre.find_or_create_by(name: "rock")
rap = Genre.find_or_create_by(name: "rap")

hello = Song.find_or_create_by(name: "hello")
goodbye = Song.find_or_create_by(name: "goodbye")

adele = Artist.find_or_create_by(name: "adele")
drake = Artist.find_or_create_by(name: "drake")
