RSpec.describe 'songs show page' do
  it 'shows all title, playcount, length, and artist name for particular song' do
    carly_rae = Artist.create(name: "Carly Rae")
    song_1 = carly_rae.songs.create(title:       "I Really Like You",
                         length:      100,
                         play_count:  243810867,
                         )
    song_2 = Song.create(title: "Livin on a Prayer", length: 200, play_count: 10000, artist_id: carly_rae.id)

    visit "/songs/#{song_1.id}"

    page.has_content?(song_1.title)
    page.has_content?("Length: #{song_1.length}")
    page.has_content?("Play Count: #{song_1.play_count}")
    # page.has_content?("Artist: #{carly_rae.name}")
    expect(page).to have_content("Artist: #{song_1.artist.name}")
    expect(page).to_not have_content(song_2.title)

  end
end
