require 'player'

describe 'Plays a game' do

  describe Player do

    subject(:player){described_class.new}

    it 'recognises a won game' do
      play = [ :a, :d, :e, :f ].each{|i| player.choose(i)}
      expect(player.choose(:i)).to eq('You win. Game Over.')
    end

    it 'recognises a lost game' do
      play = [ :h, :a, :d, :e, :f ].each{|i| player.choose(i)}
      expect(player.choose(:i)).to eq('You lose. Game Over.')
    end

    it 'recognises a draw game' do
      play = [ :a, :d, :e, :b, :g, :i, :f, :c ].each{|i| player.choose(i)}
      expect(player.choose(:h)).to eq('Draw. Game Over.')
    end

  end

end
