describe GameEngine do
  subject(:player_one){ Player.new }
  subject(:player_two){ Player.new }
  subject(:game_state){ described_class.new }

  it 'disallows further gameplay after a win' do
    player_one.choose(:a)
    player_two.choose(:d)
    player_one.choose(:e)
    player_two.choose(:f)
    player_one.choose(:i)
    # player_two.choose(:h)
    expect{ game_engine.status_check }.to raise_error 'You win. Game Over.'
  end

end
