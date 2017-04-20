require 'state'
require 'player'
require 'game_engine'

describe 'Plays a game' do

  describe State do

    subject(:player_one){Player.new}
    subject(:player_two){Player.new}
    subject(:player_one_state){described_class.new(player_one.plays)}

    it 'recognises a won game' do
      player_one.choose(:a)
      player_two.choose(:d)
      player_one.choose(:e)
      player_two.choose(:f)
      player_one.choose(:i)
      expect(player_one_state.win?).to eq(true)
    end

    it 'recognises a lost game' do
      player_two.choose(:d)
      player_one.choose(:a)
      player_two.choose(:e)
      player_one.choose(:i)
      player_two.choose(:f)
      expect(player_one_state.win?).to eq(false)
    end

    describe GameEngine do
      subject(:game_engine){described_class.new}

      it 'disallows play after game over' do
        player_one.choose(:a)
        player_two.choose(:d)
        player_one.choose(:e)
        player_two.choose(:f)
        player_one.choose(:i)
        player_two.choose(:g)
        expect{ game_engine.play }.to raise_error "Sorry. Game Over."
      end

    end

  end


end
