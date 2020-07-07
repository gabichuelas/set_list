# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rock = Playlist.create!(name: "Classic Rock")
country = Playlist.create!(name: "Country")
jams = Playlist.create!(name: "Favorite Jams")

talking_heads = Artist.create!(name: "Talking Heads")
journey = Artist.create!(name: "Journey")
zac_brown = Artist.create!(name: "Zac Brown Band")

place = talking_heads.songs.create!(title: "This Must Be The Place", length: 832, play_count: 83209)
heaven = talking_heads.songs.create!(title: "Heaven", length: 832, play_count: 83219)
dont_stop = journey.songs.create!(title: "Don't Stop Believin'", length: 832, play_count: 83209)
chicken = zac_brown.songs.create!(title: "Chicken Fried", length: 4378, play_count: 7453689)

PlaylistSong.create!(song: chicken, playlist: country)
PlaylistSong.create!(song: chicken, playlist: jams)
PlaylistSong.create!(song: place, playlist: jams)
PlaylistSong.create!(song: place, playlist: rock)
PlaylistSong.create!(song: heaven, playlist: rock)
PlaylistSong.create!(song: dont_stop, playlist: rock)
