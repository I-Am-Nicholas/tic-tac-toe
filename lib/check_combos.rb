module WinningCombos

  WINNING_COMBOS = [
    [:a, :e, :i], [:c, :e, :g],
    [:a, :b, :c], [:d, :e, :f],
    [:g, :h, :i], [:a, :d, :g],
    [:b, :e, :h], [:c, :f, :i]
  ]

  FLAT_COMBOS = WINNING_COMBOS.flatten.uniq

  DRAW_CONSTANT = (WINNING_COMBOS.flatten.uniq.size / 2) + 1

end
