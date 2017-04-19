require 'state'
require 'player'

describe 'Plays a game' do

  describe State do
    subject(:state){described_class.new}
    subject(:player_one){Player.new}
    subject(:player_two){Player.new}

    it 'notifies of a won game' do
      player_one.choose(:a)
      player_two.choose(:d)
      player_one.choose(:e)
      player_two.choose(:f)
      player_one.choose(:i)
      expect(state.check?).to eq(true)
    end

  end

end
