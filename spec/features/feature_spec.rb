require 'state'
require 'player'

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


  end


end
