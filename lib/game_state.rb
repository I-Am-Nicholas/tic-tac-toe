require_relative './check_combos.rb'
require_relative './message.rb'

class GameState
  include WinningCombos

  def log
    @game_log = plays
    status_check()
  end

  def status_check
    return Message.invalid_message if invalid_entry?
    return Message.draw_message if draw?
    return Message.lose_message if !player_one_playing? && win?
    return Message.win_message if win?
    player_prompt()
  end

  def player_prompt
    return Message.player_one_play() if @game_log.size.even?
    Message.player_two_play()
  end

  def invalid_entry?
    FLAT_COMBOS.none?{|i| @game_log.include?(i)}
  end

  def draw?
    @game_log.flatten.size == FLAT_COMBOS.size
  end

  def win?
    @player_log = [player_one_log, player_two_log]
    @player_log.each do |x|
      WINNING_COMBOS.one? do |i|
        return true if x.sort == i.sort
      end
    end
    false
  end

  def player_one_playing?
    @game_log.size.odd?
  end

  def player_one_log
    @game_log.select.with_index{|x, i| i.even?}
  end

  def player_two_log
    @game_log - player_one_log()
  end
end
