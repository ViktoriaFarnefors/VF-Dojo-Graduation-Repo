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

    Rule: Player X places X-markers

        Scenario: Player X can only place X-markers
            Given the it is Player X turn
            When Player X places a marker
            Then an X marker is printed on the screen in the correct place

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

        Scenario: Player wins with a vertical line
            Given that Player X has placed it's markers in a vertical line
            When Player X turn has ended
            Then Player X is named the winner
            
    #THE SECOND MILESTONE IS TESTED