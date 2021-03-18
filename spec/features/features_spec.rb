require_relative "../../lib/app"

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
      expect(page).to have_text "Pixie's Hit Points:"
    end
    context "Players can attack each other" do
      it "Player 1 can attack Player 2" do
        click_on('attack_player_2')
        expect(page).to have_text "Player 2 has been attacked!"
      end
    end
  end
end
