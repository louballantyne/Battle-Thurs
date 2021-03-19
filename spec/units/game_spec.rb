require 'game'
require 'player'

describe Game do
  subject { Game.new('Pixie','Caesar') }
  describe '#turns' do
    it 'alternates between turns' do
      subject.instance_variable_set(:@turn, "Pixie")
      subject.change_turn
      expect(subject.turn).not_to eq "Pixie"
    end
  end
end
