# moved this line into ~/.rspec
# require 'rails_helper'

RSpec.describe "songs index page", type: :feature do
  it "can see all song titles and play count" do

    carly_rae = Artist.create(name: "Carly Rae")
    # now that we have associations, we can't create a song without
    # a corresponding artist_id,
    # so this is one way to solve that problem
    # because now, Artist.songs is a valid method as defined in
    # artist.rb class def.

    song_1 = carly_rae.songs.create(title:       "I Really Like You",
                         length:      208,
                         play_count:  243810867,
                         )
    song_2 = carly_rae.songs.create(title:       "Call Me Maybe",
                         length:      199,
                         play_count:  1214722172)
    visit "/songs"

    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Play Count: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Play Count: #{song_2.play_count}")
  end

  it 'shows average length of all songs' do
    carly_rae = Artist.create(name: "Carly Rae")
    bon_jovi = Artist.create(name: "Bon Jovi")

    song_1 = carly_rae.songs.create(title:       "I Really Like You",
                         length:      100,
                         play_count:  243810867,
                         )
    song_2 = Song.create(title: "Livin on a Prayer", length: 200, play_count: 10000, artist_id: bon_jovi.id)
    song_3 = carly_rae.songs.create(title:       "Call Me Maybe",
                        length:      300,
                        play_count:  1214722172)

    visit "/songs"

    expect(page).to have_content('Average Length of Songs: 200')
  end
end
