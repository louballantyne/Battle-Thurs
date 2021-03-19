
require_relative "../../lib/app"
require_relative "../../lib/player"


describe Player do
  player = Player.new("Rolo")
  it 'returns its name' do
    expect(player).to respond_to(:name)
  end

end
