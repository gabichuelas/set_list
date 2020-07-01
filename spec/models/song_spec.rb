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
  end
end
