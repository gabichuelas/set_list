# 3 things we are testing
# - relationships
# - validations
# - class/instance methods

RSpec.describe Song do
  describe 'validations' do
    it { should validate_presence_of :title }
  end
  describe 'relationships' do
    it { should belong_to :artist }
    it { should have_many :playlist_songs}
    it { should have_many(:playlists).through(:playlist_songs)}
  end

  describe 'methods' do
    it '.average_length' do
      carly_rae = Artist.create(name: "Carly Rae")
      bon_jovi = Artist.create(name: "Bon Jovi")

      song_1 = carly_rae.songs.create(title:       "I Really Like You",
                           length:      100,
                           play_count:  243810867,
                           )
      song_2 = Song.create(title: "Livin on a Prayer", length: 200, play_count: 10000, artist_id: bon_jovi.id)

      expect(Song.average_length).to eq(150)

    end
  end
end
