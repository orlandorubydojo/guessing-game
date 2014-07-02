# Guessing Game
This dojo we will be making a guessing game! The idea is that given a random number, we have a certain number of tries to guess the correct number.

## Usage

```ruby
# GuessingGame.new(max_number, tries)
@guessing_game = GuessingGame.new(10, 3)

@guessing_game.tries
=> 3
@guessing_game.answer
=> 5
@guessing_game.guess(9)
=> false
@guessing_game.guess(6)
=> false
@guessing_game.tries
=> 1
@guessing_game.guess(5)
=> true
```

## Extra Credit
Add the ability for the game to tell you if your guess is close.

```ruby
# GuessingGame.new(max_number, tries, closeness_range)
@guessing_game = GuessingGame.new(10, 3, 2)

# When a guess is within the closeness_range
@guessing_game.guess(7)
=> :close

```
