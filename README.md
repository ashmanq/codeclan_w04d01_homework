# Ruby Rock Paper Scissors Game
This Ruby app demonstrates the use of the sinatra module in Ruby. It creates a local server to host a mini website that allows the user
to play a rock paper scissors game by going to specific urls.

To play the game you type in the results for the two players draw into the address bar using the following format:

http://localhost:4567/play/player1_choice/player2_choice

Where player1_choice and player2_choice are replaced with either rock, paper or scissors.

The app website comprises of a welcome page and an about page. Using the above url format will result in a page showing
a message of who won the game.

# Run App
To run the app use the following command in terminal:
```Ruby
ruby controller.rb
```

