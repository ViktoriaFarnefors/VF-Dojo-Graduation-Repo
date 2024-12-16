Feature: Tic-Tac-Toe

This game is a tic-tac-toe-game between two bots. Each round, the bots takes turn placing markers (X and O).
The game ends when there is a winner, or if the result is a draw.

    Rule: An empty gameboard is printed when the game starts

        Scenario: An empty board
            When the game starts
            Then an empty board is printed on the screen
            And no markers are shown on the board

    #THE FIRST MILESTONE IS TESTED

    Rule: Player X starts the game

        Scenario: Player X starts the game
            Given that a empty board is printed on the screen
            When the game starts
            Then Player X is the starting player

    Rule: The correct symbol is shown for the players markers

        Scenario: Player X place X-markers
            Given the it is Player X turn
            When Player X places a marker
            Then an X marker is printed on the screen in the correct place

        Scenario: Player O place O-markers
            Given the it is Player O turn
            When Player O places a marker
            Then an O marker is printed on the screen in the correct place

    Rule: Markers can only be placed in an empty spot

        Scenario: Player cannot place marker in a spot that is taken
            Given that a spot already has a marker
            When a player tries to place a marker in the occupied spot
            Then the player cannot place the marker there

        Scenario: Players can place markers in empty spots
            Given that a spot is empty
            When a player tries to place a marker in the occupied spot
            Then the player can place the marker there

    Rule: Players takes turn placing markers

        Scenario: Player X takes it's turn
            Given that Player O placed the previous marker
            And that there is no winner
            When the game continues
            Then Player X places a marker

        Scenario: Player O takes it's turn
            Given that Player X placed the previous marker
            And that there is no winner
            When the game continues
            Then Player O places a marker

    Rule: A player can win with a vertical line

        #Scenarios below is based on a board with numbered spaces from 1-9

        Scenario: Player X wins with a vertical line
            Given that Player X has placed it's markers in the spaces <space1>, <space2> and <space3>
            When Player X turn has ended
            Then Player X is named the winner

        Examples:
          | space1 | space2 | space3 |
          | 1      | 4      | 7      |
          | 2      | 5      | 8      |
          | 3      | 6      | 9      |

        Scenario: Player O wins with a vertical line
            Given that Player O has placed it's markers in the spaces <space1>, <space2> and <space3>
            When Player O turn has ended
            Then Player O is named the winner

        Examples:
          | space1 | space2 | space3 |
          | 1      | 4      | 7      |
          | 2      | 5      | 8      |
          | 3      | 6      | 9      |

          #THE SECOND MILESTONE IS TESTED

    Rule: The winners name is printed on the screen

        Scenario: The winner, Player X, name is printed
            When Player X is namned the winner
            Then the text "PLAYER X WON" is printed on the screen

        Scenario: The winner, Player O, name is printed
            When Player O is namned the winner
            Then the text "PLAYER O WON" is printed on the screen

    Rule: If a player is namned the winner, the game ends

        Scenario: The game ends after Player X wins
            Given that Player X won the game
            And that the winners name has been printed on the screen
            Then the game ends

        Scenario: The game ends after Player O wins
            Given that Player O won the game
            And that the winners name has been printed on the screen
            Then the game ends

    Rule: A player can win with a horizontal line

        #Scenarios below is based on a board with numbered spaces from 1-9

        Scenario: Player X wins with a horizontal line
            Given that Player X has placed it's markers in the spaces <space1>, <space2> and <space3>
            When Player X turn has ended
            Then Player X is named the winner

        Examples:
          | space1 | space2 | space3 |
          | 1      | 2      | 3      |
          | 4      | 5      | 6      |
          | 7      | 8      | 9      |

        Scenario: Player O wins with a horizontal line
            Given that Player O has placed it's markers in the spaces <space1>, <space2> and <space3>
            When Player O turn has ended
            Then Player O is named the winner

        Examples:
          | space1 | space2 | space3 |
          | 1      | 2      | 3      |
          | 4      | 5      | 6      |
          | 7      | 8      | 9      |

          #THE THIRD MILESTONE IS TESTED

    Rule: A player can win with a diagonal line

        #Scenarios below is based on a board with numbered spaces from 1-9

        Scenario: Player X wins with a diagonal line
            Given that Player X has placed it's markers in the spaces <space1>, <space2> and <space3>
            When Player X turn has ended
            Then Player X is named the winner

        Examples:
          | space1 | space2 | space3 |
          | 1      | 5      | 9      |
          | 3      | 5      | 7      |

        Scenario: Player O wins with a diagonal line
            Given that Player O has placed it's markers in the spaces <space1>, <space2> and <space3>
            When Player O turn has ended
            Then Player O is named the winner

        Examples:
          | space1 | space2 | space3 |
          | 1      | 5      | 9      |
          | 3      | 5      | 7      |

          #THE FOURTH MILESTONE IS TESTED

    Rule: The game can end in a draw

        Scenario: The games ends in a draw
            Given that that no winner has been namned
            And that there are no more empty spots
            Then the games ends in a draw

    Rule: A draw result is printed on the screen

        Scenario: The draw result is printed on the screen
            Given that the game ends in a draw
            Then the text "THE GAME ENDS IN A A DRAW!" is printed in the screen

    Rule: If the game is a draw, the game ends

        Scenario: The game ends after a draw result
            Given that the game ends in a draw
            And that the result was printed on the screen
            Then the game is ended

    #THE FIFTH MILESTONE IS TESTED


    #Depending on the customers desire, this could be done sooner but it's not specified in the requirments if it's
    #important to have this early in the development

    Rule: There is a 2 second paus between turns

        Given that Player X placed the last previous marker
            When the game continues
            Then there should be a two second paus

            Given that Player O placed the last previous marker
            When the game continues
            Then there should be a two second paus