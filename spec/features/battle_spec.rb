require './app'

describe 'Battle', type: :feature do
  it 'has a home page' do
    visit ('/')
    expect(page).to have_field('player_1')
  end

  it 'fills, submits and returns names' do
    sign_in_and_play
    expect(page).to have_content "Bob and Tom will be playing Battle!"
  end

  it 'shows hit points on screen after names entered' do
    sign_in_and_play
    expect(page).to have_content "Tom's HP: 100"
  end

  it 'allows player 1 to attack player 2 and shows confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Bob attacked Tom"
  end

  context 'attack' do
    it 'reduces players HP by 10' do
      sign_in_and_play
      click_button('Attack')
      click_link('Continue Play')
      expect(page).to have_content "HP: 90"
    end
  end
end
