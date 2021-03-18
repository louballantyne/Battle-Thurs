require_relative "../../lib/app"
require_relative "../../lib/game"

describe Game do
  let(:test_player_1) { double(:player1, hit_points: 90 , :reduce_hit_points => 90)}
  let(:test_player_2) { double(:player2, hit_points: 90 , :reduce_hit_points => 90) }
  let(:player_class) { double(:player_class)}
  let(:test_game) { Game.new(test_player_1,test_player_2, player_class) }

  before do
    allow(player_class).to receive(:new).with(test_player_1).and_return test_player_1
    allow(player_class).to receive(:new).with(test_player_2).and_return test_player_2
  end

  describe '#attack' do
    it 'attacks a player and reduces their hit points by 10' do

      allow(test_player_2).to receive(:attacked=)
      allow(test_player_1).to receive(:attacked=)
      allow(test_player_1).to receive(:reduce_hit_points).and_return(90)
      expect(test_game.attack(test_player_2)).to eq test_player_2.hit_points
    end
  end

  describe '#new' do
    it 'accepts two players' do
      expect(Game).to respond_to(:new).with(2).arguments
    end
  end

  describe '#change_turn' do
    it 'changes the turn variable' do

      expect(test_game.change_turn).to eq(test_player_2)
    end
  end

  describe '#target' do
    it 'returns the target depending on whos turn it is' do
      expect(test_game.target).to eq(test_player_2)
    end
  end

  describe '.create_game' do
    it 'creates an instance of the game and stores it in @@this_game class variable' do
      expect(Game.create_game(test_player_1,test_player_2, player_class)).to be_instance_of(Game)
    end
  end

  describe '.this_game' do
    it 'returns the current instance of this game' do
      expect(Game.this_game).to be_instance_of(Game)
    end
  end
end
