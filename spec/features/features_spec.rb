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
        click_on('attack')
        expect(page).to have_text "Pixie has been attacked by Caesar !"
      end
      it "An attack by Player 1 reduces Player 2's HP by 10" do
        expect { click_on('attack') }.to change{$game.player2.hit_points}.by(-10)
      end
    end
  end
end
