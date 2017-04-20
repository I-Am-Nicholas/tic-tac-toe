describe GameEngine do
  subject(:game_engine){described_class.new}

  it 'has a play method' do
    expect(game_engine).to respond_to(:play)
  end

end
