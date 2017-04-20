describe State do

  describe 'Game' do
    subject(:player_one){Player.new}
    subject(:player_one_state){described_class.new(player_one.plays)}

    describe 'Winning line' do

      it 'is registered as a win in any order' do
        player_one.choose(:a)
        player_one.choose(:b)
        player_one.choose(:c)
        expect(player_one_state.win?).to eq(true)
      end

      it 'is registered as a win in any order' do
        player_one.choose(:a)
        player_one.choose(:c)
        player_one.choose(:b)
        expect(player_one_state.win?).to eq(true)
      end

      it 'is registered as a win in any order' do
        player_one.choose(:b)
        player_one.choose(:c)
        player_one.choose(:a)
        expect(player_one_state.win?).to eq(true)
      end

      it 'is registered as a win in any order' do
        player_one.choose(:b)
        player_one.choose(:a)
        player_one.choose(:c)
        expect(player_one_state.win?).to eq(true)
      end

      it 'is registered as a win in any order' do
        player_one.choose(:c)
        player_one.choose(:a)
        player_one.choose(:b)
        expect(player_one_state.win?).to eq(true)
      end

      it 'is registered as a win in any order' do
        player_one.choose(:c)
        player_one.choose(:b)
        player_one.choose(:a)
        expect(player_one_state.win?).to eq(true)
      end

    end

    describe 'Losing line' do

      it 'is not registered in any order' do
        player_one.choose(:a)
        player_one.choose(:b)
        player_one.choose(:d)
        expect(player_one_state.win?).to eq(false)
      end

      it 'is not registered in any order' do
        player_one.choose(:a)
        player_one.choose(:d)
        player_one.choose(:b)
        expect(player_one_state.win?).to eq(false)
      end

      it 'is not registered in any order' do
        player_one.choose(:b)
        player_one.choose(:d)
        player_one.choose(:a)
        expect(player_one_state.win?).to eq(false)
      end

      it 'is not registered in any order' do
        player_one.choose(:b)
        player_one.choose(:a)
        player_one.choose(:d)
        expect(player_one_state.win?).to eq(false)
      end

      it 'is not registered in any order' do
        player_one.choose(:d)
        player_one.choose(:a)
        player_one.choose(:b)
        expect(player_one_state.win?).to eq(false)
      end

      it 'is not registered in any order' do
        player_one.choose(:d)
        player_one.choose(:b)
        player_one.choose(:a)
        expect(player_one_state.win?).to eq(false)
      end

    end

  end

end
