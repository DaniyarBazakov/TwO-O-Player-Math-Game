# TwO-O-Player Math Game

## Description

The TwO-O-Player Math Game is a command-line, turn-based math game for two players. Players take turns answering simple addition problems involving random numbers between 1 and 20. Each player starts with 3 lives, and they lose a life if they answer incorrectly. The game continues until one of the players loses all their lives, at which point the game announces the winner.

This project was built using Object-Oriented Programming (OOP) concepts in Ruby.

## Features

- Two-player math game
- Randomly generated addition questions
- Players alternate turns until one loses all lives
- Tracks and displays player scores after each turn

## File Structure

```
TwO-O-Player-Math-Game/
├── classes/                # Contains Ruby class files
│   ├── game.rb             # Game class definition
│   ├── player.rb           # Player class definition
│   └── questions.rb        # Question class definition
├── main.rb                 # Entry point for the game
└── README.md               # Project documentation (this file)
```

## How to Play

1. The game will prompt each player with a math addition question on their turn.
2. Players must type in their answer and press Enter.
3. If the answer is correct, the game will continue to the next turn.
4. If the answer is incorrect, the player will lose a life.
5. The game continues until one player has no lives remaining.
6. The game will announce the winner and end.


