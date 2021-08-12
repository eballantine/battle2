require 'models/player'

describe Player do
  it  "returns it's name" do
    player = Player.new("Paul")
    expect(player.name).to eq("Paul")
  end
end