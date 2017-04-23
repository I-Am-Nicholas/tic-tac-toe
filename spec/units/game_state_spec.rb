describe GameState do

  describe 'Gameplay' do
    subject(:player){Player.new}
    subject(:player_state){described_class.new}

    describe 'Winning line' do

      it 'is registered as a win in any order' do
        play = [ :a, :g, :b, :d ].each{|i| player.choose(i)}
        expect(player.choose(:c)).to eq('You win. Game Over.')
      end

      it 'is registered as a win in any order' do
        play = [ :a, :g, :c, :d ].each{|i| player.choose(i)}
        expect(player.choose(:b)).to eq('You win. Game Over.')
      end

      it 'is registered as a win in any order' do
        play = [ :b, :g, :c, :d ].each{|i| player.choose(i)}
        expect(player.choose(:a)).to eq('You win. Game Over.')
      end

      it 'is registered as a win in any order' do
        play = [ :b, :g, :a, :d ].each{|i| player.choose(i)}
        expect(player.choose(:c)).to eq('You win. Game Over.')
      end

      it 'is registered as a win in any order' do
        play = [ :c, :g, :a, :d ].each{|i| player.choose(i)}
        expect(player.choose(:b)).to eq('You win. Game Over.')
      end

      it 'is registered as a win in any order' do
        play = [ :c, :g, :b, :d ].each{|i| player.choose(i)}
        expect(player.choose(:a)).to eq('You win. Game Over.')
      end

    end

    describe 'Losing line' do

      it 'is registered as a loss in any order' do
        play = [ :h, :c, :a, :f, :b ].each{|i| player.choose(i)}
        expect(player.choose(:i)).to eq('You lose. Game Over.')
      end

      it 'is registered as a loss in any order' do
        play = [ :a, :c, :d, :e, :b ].each{|i| player.choose(i)}
        expect(player.choose(:g)).to eq('You lose. Game Over.')
      end

      it 'is registered as a loss in any order' do
        play = [ :b, :c, :d, :f, :a ].each{|i| player.choose(i)}
        expect(player.choose(:i)).to eq('You lose. Game Over.')
      end

      it 'is registered as a loss in any order' do
        play = [ :b, :c, :a, :f, :d ].each{|i| player.choose(i)}
        expect(player.choose(:i)).to eq('You lose. Game Over.')
      end

      it 'is registered as a loss in any order' do
        play = [ :d, :c, :a, :f, :b ].each{|i| player.choose(i)}
        expect(player.choose(:i)).to eq('You lose. Game Over.')
      end

      it 'is registered as a loss in any order' do
        play = [ :d, :c, :b, :f, :a ].each{|i| player.choose(i)}
        expect(player.choose(:i)).to eq('You lose. Game Over.')
      end

    end

      describe 'Prompts' do

        it 'player one to play' do
          player.choose(:d)
          expect(player.choose(:a)).to eq("Player one to play.")
        end

        it 'player two to play' do
          play = [ :d, :c ].each{|i| player.choose(i)}
          expect(player.choose(:a)).to eq("Player two to play.")
        end

      end

      describe 'Invalid entry' do

        it 'is flagged' do
          expect{ player.choose(:k) }.to raise_error "Invalid Entry. Please try again."
        end

      end


  end

end
