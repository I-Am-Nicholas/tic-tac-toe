describe Player do
  subject(:player_one){described_class.new}

  it 'selection is registered' do
    player_one.choose(:a)
    expect(player_one.plays).to include(:a)
  end

end
