# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ArtworkShare.destroy_all
Artwork.destroy_all
User.destroy_all

names = ['eric', 'herbert', 'apple','banana','david']
artists = []
names.each do |el|
  artists << User.create!(username: el)
end

Artwork.create(title: 'A Contemplation of Stool' ,image_url: 'poop.com', artist: artists.sample)
Artwork.create(title: 'The King is Dead, Long Live the King' ,image_url: 'rip.com', artist:  artists.sample)
Artwork.create(title: 'Travis Tillotson' , image_url: 'travis.com', artist:  artists.sample)
Artwork.create(title: 'Blood Sport' ,image_url: 'xD.com', artist: artists.sample )
Artwork.create(title: 'ayy lmao' , image_url: 'hahalmao.com', artist: artists.sample )

ArtworkShare.create(artwork_id: 1, viewer_id: 2)
ArtworkShare.create(artwork_id: 2, viewer_id: 3)
ArtworkShare.create(artwork_id: 2, viewer_id: 4)
ArtworkShare.create(artwork_id: 3, viewer_id: 5)
ArtworkShare.create(artwork_id: 4, viewer_id: 1)
ArtworkShare.create(artwork_id: 3, viewer_id: 2)
ArtworkShare.create(artwork_id: 5, viewer_id: 3)
ArtworkShare.create(artwork_id: 1, viewer_id: 4)
