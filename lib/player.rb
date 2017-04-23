require_relative './game_state.rb'

class Player < GameState
  attr_reader :plays

  def initialize
    @plays = []
  end

  def choose(choice)
    @plays << choice
    log()
  end

end
