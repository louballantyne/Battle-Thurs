require './app'

describe Battle do
  describe "The Homepage", type: :feature do
    before do
      visit '/'
      fill_in 'player1', with: 'Caesar'
      fill_in 'player2', with: 'Pixie'
      click_button 'submit'
    end
    it "Shows the entered names" do
      expect(page).to have_text 'Caesar'
      expect(page).to have_text 'Pixie'
    end
    it "Shows Player 2's Hit Points" do
      expect(page).to have_text "Pixie's Hit Points:"
    end
  end
end
