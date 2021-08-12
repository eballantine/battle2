require 'app'

describe 'Battle', type: :feature do
  it 'has a home page' do
    visit ('/')
    expect(page).to have_content('Testing infrastructure working!')
  end

  it 'fills, submits and returns names' do
    visit ('/')
    # within("#form") 
    fill_in 'Player 1', with: 'Bob'
    fill_in 'Player 2', with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content "Bob and Tom will be playing Battle!"
end
end