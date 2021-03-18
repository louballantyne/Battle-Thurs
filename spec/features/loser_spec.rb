require_relative "../../lib/app"

describe Battle do

  feature 'losing' do
    before do
      sign_in_and_play
    end
    scenario 'Player 2 is attacked when they only have 10HP' do
      19.times { click_on('attack') }
      expect(page).to have_text "Caesar won!"
    end
  end
end
