RSpec.describe 'as a visitor' do
  describe 'when I visit /artists' do
    it 'I see a list of all artist names' do
      carly_rae = Artist.create(name: "Carly Rae")
      bon_jovi = Artist.create(name: "Bon Jovi")
      bonobo = Artist.create(name: "Bonobo")

      visit '/artists'

      page.has_content?(carly_rae.name)
      page.has_content?(bon_jovi.name)
      page.has_content?(bonobo.name)
    end
  end
end
