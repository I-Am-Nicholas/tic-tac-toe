class Message

  def self.lose_message
    "You lose. Game Over. New game."
  end

  def self.win_message
    "You win. Game Over. New game."
  end

  def self.draw_message
    "Draw. Game Over. New game."
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
