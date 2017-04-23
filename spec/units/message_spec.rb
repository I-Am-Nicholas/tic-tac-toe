describe Message do
  subject(:message){described_class}

  describe 'Displays appropriate messages' do

    it 'Notifies of a lost game' do
      expect(message.lose_message).to eq("You lose. Game Over. New game.")
    end

    it 'Notifies of a won game' do
      expect(message.win_message).to eq("You win. Game Over. New game.")
    end

    it 'Notifies of a draw game' do
      expect(message. draw_message).to eq("Draw. Game Over. New game.")
    end

    it 'Notifies Player One to play' do
      expect(message.player_one_play).to eq("Player one to play.")
    end

    it 'Notifies Player Two to play' do
      expect(message.player_two_play).to eq("Player two to play.")
    end

    it 'Notifies of an invalid play' do
      expect{message.invalid_message}.to raise_error "Invalid Entry. Please try again."
    end

  end

end
