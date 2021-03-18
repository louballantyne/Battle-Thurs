
require_relative "../../lib/app"
require_relative "../../lib/player"


describe Player do
  alias_method :player, :subject
  it 'returns its name' do
    expect(subject).to respond_to(:name)
  end

end
