require 'player'

describe 'Plays a game' do

  describe Player do

    subject(:player){described_class.new}

    it 'recognises a won game' do
      [ :a, :d, :e, :f ].each{|i| player.choose(i)}
      expect(player.choose(:i)).to eq('You win. Game Over. New game.')
    end

    it 'recognises a lost game' do
      [ :h, :a, :d, :e, :f ].each{|i| player.choose(i)}
      expect(player.choose(:i)).to eq('You lose. Game Over. New game.')
    end

    it 'recognises a draw game' do
      [ :a, :d, :e, :b, :g, :i, :f, :c ].each{|i| player.choose(i)}
      expect(player.choose(:h)).to eq('Draw. Game Over. New game.')
    end

  end

end
