require_relative "../../lib/app"
require_relative '../../lib/player'
require_relative '../../lib/game'


describe Battle do
  describe "The Homepage", type: :feature do
    before do
      sign_in_and_play
    end

    it "Shows the entered names" do
      expect(page).to have_text 'Caesar'
      expect(page).to have_text 'Pixie'
    end
    it "Shows Player 2's Hit Points" do
      expect(page).to have_text "Pixie's Hit Points:100"
    end
    it 'Shows an attack confirmation when a player attacks' do
      click_button 'attack'
      expect(page).to have_text " has been attacked!"
    end
    it 'Reduces the hit points by 10 when a Player is attacked' do
      click_button 'attack'
      expect(page).to have_text "90"
    end
    it 'Allows someone to lose' do
      19.times {click_button 'attack'}
      expect(page).to have_text "WON"
    end
  end
end
