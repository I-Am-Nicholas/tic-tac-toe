describe Player do
  subject(:player){described_class.new}
  win_msg = 'You win. Game Over. New game.'
  lose_msg = 'You lose. Game Over. New game.'
  it 'should inherit from the GameState class' do
     expect(described_class.superclass).equal? GameState
  end

  it 'selection is registered' do
    player.choose(:a)
    expect(player.plays).to include(:a)
  end

  describe 'Gameplay' do

    it 'stores player moves in a log' do
      [ :a, :g, :b, :d ].each{|i| player.choose(i)}
      expect(player.plays).to eq([ :a, :g, :b, :d ])
    end

  end

  describe 'Winning line' do

    it 'is registered as a win in any order' do
      [ :a, :g, :b, :d ].each{|i| player.choose(i)}
      expect(player.choose(:c)).to eq(win_msg)
    end

    it 'is registered as a win in any order' do
      [ :a, :g, :c, :d ].each{|i| player.choose(i)}
      expect(player.choose(:b)).to eq(win_msg)
    end

    it 'is registered as a win in any order' do
      [ :b, :g, :c, :d ].each{|i| player.choose(i)}
      expect(player.choose(:a)).to eq(win_msg)
    end

    it 'is registered as a win in any order' do
      [ :b, :g, :a, :d ].each{|i| player.choose(i)}
      expect(player.choose(:c)).to eq(win_msg)
    end

    it 'is registered as a win in any order' do
      [ :c, :g, :a, :d ].each{|i| player.choose(i)}
      expect(player.choose(:b)).to eq(win_msg)
    end

    it 'is registered as a win in any order' do
      [ :c, :g, :b, :d ].each{|i| player.choose(i)}
      expect(player.choose(:a)).to eq(win_msg)
    end

  end

  describe 'Losing line' do

    it 'is registered as a loss in any order' do
      [ :h, :c, :a, :f, :b ].each{|i| player.choose(i)}
      expect(player.choose(:i)).to eq(lose_msg)
    end

    it 'is registered as a loss in any order' do
      [ :a, :c, :d, :e, :b ].each{|i| player.choose(i)}
      expect(player.choose(:g)).to eq(lose_msg)
    end

    it 'is registered as a loss in any order' do
      [ :b, :c, :d, :f, :a ].each{|i| player.choose(i)}
      expect(player.choose(:i)).to eq(lose_msg)
    end

    it 'is registered as a loss in any order' do
      [ :b, :c, :a, :f, :d ].each{|i| player.choose(i)}
      expect(player.choose(:i)).to eq(lose_msg)
    end

    it 'is registered as a loss in any order' do
      [ :d, :c, :a, :f, :b ].each{|i| player.choose(i)}
      expect(player.choose(:i)).to eq(lose_msg)
    end

    it 'is registered as a loss in any order' do
      [ :d, :c, :b, :f, :a ].each{|i| player.choose(i)}
      expect(player.choose(:i)).to eq(lose_msg)
    end

  end

  describe 'Prompts' do

    it 'player one to play' do
      player.choose(:d)
      expect(player.choose(:a)).to eq("Player one to play.")
    end

    it 'player two to play' do
      [ :d, :c ].each{|i| player.choose(i)}
      expect(player.choose(:a)).to eq("Player two to play.")
    end

  end

end
