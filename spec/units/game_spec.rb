require_relative "../../lib/app"
require_relative "../../lib/game"

describe Game do
  let(:test_game) { Game.new }
  let(:test_player_2) { double(:player, hit_points: 100 , :hit_points= => 90)}


  describe '#attack' do
    it 'attacks a player and reduces their hit points by 10' do
      expect(test_game.attack(test_player_2)).to eq test_player_2.hit_points - 10
    end
  end
end
