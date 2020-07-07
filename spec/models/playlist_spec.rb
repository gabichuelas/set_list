RSpec.describe Playlist do
  describe "relationships" do
    it { should have_many(:songs).through(:playlist_songs) }
  end
end
