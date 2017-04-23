class Message

  def self.lose_message
    "You lose. Game Over."
  end

  def self.win_message
    "You win. Game Over."
  end

  def self.draw_message
    "Draw. Game Over."
  end

  def self.player_one_play
    "Player one to play."
  end

  def self.player_two_play
    "Player two to play."
  end

  def self.invalid_message
    raise "Invalid Entry. Please try again."
  end

end
