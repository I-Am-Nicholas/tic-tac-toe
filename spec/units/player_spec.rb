describe Player do
  subject(:player){described_class.new}

  it 'selection is registered' do
    player.choose(:a)
    expect(player.plays).to include(:a)
  end

end
