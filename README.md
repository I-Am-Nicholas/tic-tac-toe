#TIC - TAC - TOE

##PROGRAM SEQUENCE / REVIEW TESTING

- The game is in the classic 3 X 3 layout using the letters of the alphabet as symbols for the play counters, like so:

    :a | :b | :c
    ------------
    :d | :e | :f
    ------------
    :g | :h | :i

Plays are entered on the command line in the following format:

player.choose(:c, :d, :a, :h)

The first play represents Player One's move, the second Player Two's, the third Player Ones, and so on.

##Dependencies

On the command line the following files are required, in this order, prior to feature testing:


- The RSpec gem library is required for testing.


##ISSUES / FUTURE IMPLEMENTATIONS

- The false boolean on Line 43 of game_state.rb can be incorporated into a ternary 'if' statement on Line 40, were it not for it currently breaking my player_prompt method on Line 20.
