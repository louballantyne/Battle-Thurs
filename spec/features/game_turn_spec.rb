require_relative "../../lib/app"

feature 'game turns' do
  scenario 'first player 1 attacks and then player 2 attacks' do
    sign_in_and_play
    click_on('attack')
    expect(page).to have_text "Player 2 has been attacked!"
    expect(page).to have_text "Pixie's Turn"
    click_on('attack')
    expect(page).to have_text "Player 1 has been attacked!"
    expect(page).to have_text "Caesar's Turn"
  end
end
