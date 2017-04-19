require_relative './check_combos.rb'

class State

  include WinningCombos

def initialize(plays)
  @plays = plays
end

  def win?
    WINNING_COMBOS.include?(@plays)
  end

end
