# TIC - TAC - TOE


## PROGRAM SEQUENCE / REVIEW TESTING

- The game is in the classic 3 X 3 layout using the letters of the alphabet as symbols for the play counters, like so:

    :a | :b | :c
    ------------
    :d | :e | :f
    ------------
    :g | :h | :i
    ------------
Plays are entered on the command line in the following format:

player.choose(:c)
player.choose(:d)
player.choose(:e)

The first play represents Player One's move, the second Player Two's, the third Player Ones, and so on. The game will prompt the next player to play.

- In RSpec testing these lines...

[ :a, :g, :b, :d ].each{|i| player.choose(i)}

...are simply multiple plays grouped into one line for DRYness.


## DEPENDENCIES

On the command line the following files are required, in this order, prior to feature testing:

require './message.rb'

require './check_combos.rb'

require './game_state.rb'

require './player.rb'


- The RSpec gem library is required for testing.


## IN IRB...

Nicholass-MacBook-Pro-2:tic-tac-toe Hyper$ cd lib

Nicholass-MacBook-Pro-2:lib Hyper$ irb

2.3.1 :001 > require './message.rb'

 => true

2.3.1 :002 > require './check_combos.rb'

 => true

2.3.1 :003 > require './game_state.rb'

 => true

2.3.1 :004 > require './player.rb'

 => true

2.3.1 :005 > player = Player.new

 => #<Player:0x007fcd0c26fdc8 @plays=[]>

2.3.1 :006 > player.choose(:a)

 => "Player two to play."

2.3.1 :007 > player.choose(:d)

 => "Player one to play."

2.3.1 :008 > player.choose(:b)

 => "Player two to play."

2.3.1 :009 > player.choose(:e)

 => "Player one to play."

2.3.1 :010 > player.choose(:c)

 => "You win. Game Over. New game."



## ISSUES / FUTURE IMPLEMENTATIONS

- The false boolean on Line 40 of game_state.rb can be incorporated into a ternary 'if' statement on Line 40, were it not for it currently breaking my player_prompt method on Line 20.

- Originally, my log() method (Line 7 game_state.rb) did its job without parameters. I found I needed to add this functionality for the GameState unit tests to recognise that the @game_log instance variable was populated. The attribute reader in the Player class had previously sufficed. I believe I can do something there with a double.


## WORK IN PROGRESS / IMMEDIATE FUTURE

- Game runs on IRB but only at MVP level. Restart not yet implemented correctly, etc.
- Invalid entry functionality needs to be added.
