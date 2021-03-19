require_relative '../../lib/player'

describe Player do
  subject { Player.new('Pixie') }
  describe 'the player has attributes' do
    it 'knows its name' do
      expect(subject).to respond_to(:name)
    end
  end
end
