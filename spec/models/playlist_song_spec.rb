RSpec.describe PlaylistSong do
  describe "relationships" do
    it { should belong_to :playlist }
    it { should belong_to :song }
  end
end
