require_relative './check_combos.rb'

class State

  include WinningCombos

  def initialize(plays)
    @plays = plays
  end

  def win?
    WINNING_COMBOS.one?{|m| m.uniq.sort == @plays.uniq.sort}
  end

end
