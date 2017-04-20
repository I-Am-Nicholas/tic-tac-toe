describe State do

  describe 'Game' do
    subject(:player_one){Player.new}
    subject(:state){described_class.new(player_one.plays)}

    it 'registers when a player selects a winning line, in any order' do
      player_one.choose(:a)
      player_one.choose(:b)
      player_one.choose(:c)
      expect(state.win?).to eq(true)
    end

    it 'registers when a player selects a winning line, in any order' do
      player_one.choose(:a)
      player_one.choose(:c)
      player_one.choose(:b)
      expect(state.win?).to eq(true)
    end

    it 'registers when a player selects a winning line, in any order' do
      player_one.choose(:b)
      player_one.choose(:c)
      player_one.choose(:a)
      expect(state.win?).to eq(true)
    end

    it 'registers when a player selects a winning line, in any order' do
      player_one.choose(:b)
      player_one.choose(:a)
      player_one.choose(:c)
      expect(state.win?).to eq(true)
    end

    it 'registers when a player selects a winning line, in any order' do
      player_one.choose(:c)
      player_one.choose(:a)
      player_one.choose(:b)
      expect(state.win?).to eq(true)
    end

    it 'registers when a player selects a winning line, in any order' do
      player_one.choose(:c)
      player_one.choose(:b)
      player_one.choose(:a)
      expect(state.win?).to eq(true)
    end

  end

end
