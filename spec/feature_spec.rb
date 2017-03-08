require './app'

feature 'show links' do
  scenario 'show list of links on homepage' do
    Link.create(url:'https://inbox.google.com/u/0/?pli=1')
    visit '/linky'
    within 'ul#links' do
      expect(page).to have_content('https://inbox.google.com/u/0/?pli=1')
    end
  end

end
