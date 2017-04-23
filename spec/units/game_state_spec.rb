require 'player'

describe GameState do
  subject(:game){described_class.new}
  subject(:player){Player.new}


  describe 'Lose' do

    it 'checks for a lost game' do
      double(game.log([:h, :a, :d, :b, :g, :c]))
      expect(game.status_check).to eq('You lose. Game Over.')
    end

  end

  describe 'Player moves' do

    it 'prompts player one to play' do
      double(game.log([:a, :b]))
      expect(game.status_check).to eq("Player one to play.")
    end

    it 'prompts player one to play' do
      double(game.log([:a]))
      expect(game.status_check).to eq("Player two to play.")
    end

  end

  describe 'Draw' do
    let(:log){double(game.log([:a, :d, :e, :b, :g, :i, :f, :c, :h]))}

    it 'checks for a draw game' do
      log
      expect(game.status_check).to eq('Draw. Game Over.')
    end

    it 'recognises a draw' do
      log
      expect(game.draw?).to be(true)
    end

  end

  describe 'Won' do
    let(:log){double(game.log([:a, :d, :b, :g, :c]))}

    it 'checks for a won game' do
      log
      expect(game.status_check).to eq('You win. Game Over.')
    end

    it 'recognises a win' do
      log
      expect(game.win?).to be(true)
    end

  end

end
