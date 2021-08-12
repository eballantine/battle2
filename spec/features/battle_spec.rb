require 'app'

describe 'Battle', type: :feature do
  it 'has a home page' do
    visit ('/')
    expect(page).to have_field('player_1')
  end

  it 'fills, submits and returns names' do
    visit ('/')
    # within("#form") 
    fill_in 'player_1', with: 'Bob'
    fill_in 'player_2', with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content "Bob and Tom will be playing Battle!"
  end
end