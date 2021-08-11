require 'app'

describe 'Battle', type: :feature do
  it 'has a home page' do
    visit ('/')
    expect(page).to have_content('Testing infrastructure working!')
  end
end