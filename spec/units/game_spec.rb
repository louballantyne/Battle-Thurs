require_relative "../../lib/app"
require_relative "../../lib/game"

describe Game do
  let(:test_player_1) { double(:player, hit_points: 90 , :reduce_hit_points => 90)}
  let(:test_player_2) { double(:player, hit_points: 90 , :reduce_hit_points => 90)}
  let(:test_game) { Game.new(test_player_1,test_player_2) }

  describe '#attack' do
    it 'attacks a player and reduces their hit points by 10' do
      allow(test_player_2).to receive(:attacked=).with(true)
      allow(test_player_2).to receive(:reduce_hit_points).and_return(90)
      expect(test_game.attack(test_player_2)).to eq test_player_2.hit_points
    end
  end
  describe '#new' do
    it 'accepts two players' do
      expect(Game).to respond_to(:new).with(2).arguments
    end
  end
end
