require_relative './state.rb'

class Player
  attr_reader :plays

  def initialize
    @plays = []
  end

  def choose(choice)
    @plays << choice
  end

  def plays_to_state
    State.new(@plays)
  end

end
