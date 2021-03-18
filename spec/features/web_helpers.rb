require_relative "../../lib/app"

def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Caesar'
  fill_in 'player2', with: 'Pixie'
  click_button 'submit'
end
