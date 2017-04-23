#TIC - TAC - TOE

##PROGRAM SEQUENCE / REVIEW TESTING

- The game is in the classic 3 X 3 layout using the letters of the alphabet as symbols for the play counters, like so:

    :a | :b | :c
    ------------
    :d | :e | :f
    ------------
    :g | :h | :i

Plays are entered on the command line in the following format:

player.choose(:c)
player.choose(:d)
player.choose(:e)

The first play represents Player One's move, the second Player Two's, the third Player Ones, and so on. The game will prompt the next player to play.

- In RSpec testing these lines...

[ :a, :g, :b, :d ].each{|i| player.choose(i)}

...are simply multiple plays grouped into one line for DRYness.

##Dependencies

On the command line the following files are required, in this order, prior to feature testing:


- The RSpec gem library is required for testing.


##ISSUES / FUTURE IMPLEMENTATIONS

- The false boolean on Line 43 of game_state.rb can be incorporated into a ternary 'if' statement on Line 40, were it not for it currently breaking my player_prompt method on Line 20.

- Originally, my log() method (Line 10 game_state) did its job without parameters. I found I needed to add this functionality for the GameState unit tests to recognise that the @game_log instance variable was populated. The attribute reader in the Player class had previously sufficed. I believe I can do something there with a double.
