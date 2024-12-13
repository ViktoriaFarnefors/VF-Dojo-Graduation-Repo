
BACKLOG

MILESTONE: Gameboard creation

- An empty gameboard

Example:
[ , , ]
[ , , ]
[ , , ]

MILESTONE: Player X won with a vertical line

- Player X starts the game

- Player X can place an X marker

  Example:
  [X, , ]
  [ , , ]
  [ , , ]

- Player O can place an O marker

  Example:
  [X, , ]
  [ ,O, ]
  [ , , ]

- The players takes turn placing markers

- There is a paus between turns (not essential, ask PO or customer?)

- Player X makes a vertical line -> Player wins

  Example:
  [X, , ]
  [X,O, ]
  [X, ,O]

- The winners name is printed on the screen -> The game ends

MILESTONE: Player O won with a horizontal line

- Player O makes a horizontal line -> O is the winner

  Example:
  [X, ,X]
  [O,O,O]
  [X, , ]

MILESTONE: Player X won with a diagonal line

- Player X makes a diagonal line -> X is the winner

  Example:
  [X, , ]
  [O,X,O]
  [ , ,X]

MILESTONE: The game ends in a draw

- No empty spaces left och no winning lines are made -> Draw

  Example:
  [X,O,X]
  [O,O,X]
  [O,X,O]

- The draw result is printed on the screen