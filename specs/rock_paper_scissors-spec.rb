require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../models/rock_paper_scissors')
class RockPaperScissorsTest < Minitest::Test

  def setup()
    @player1 = 'rock'
    @player2 = 'rock'
  end
  def test_both_players_same_choice()
    result = RockPaperScissors.check_winner(@player1, @player2)
    assert_equal('The result is a draw', result )
  end

  def test_player1_rock_player2_scissors()
    #@player1 = 'rock'
    @player2 = 'scissors'
    result = RockPaperScissors.check_winner(@player1, @player2)
    assert_equal('player1 won with rock', result )
  end

  def test_player1_rock_player2_paper()
    #@player1 = 'rock'
    @player2 = 'paper'
    result = RockPaperScissors.check_winner(@player1, @player2)
    assert_equal('player2 won with paper', result )
  end

  def test_player1_paper_player2_rock()
    @player1 = 'paper'
    #@player2 = 'rock'
    result = RockPaperScissors.check_winner(@player1, @player2)
    assert_equal('player1 won with paper', result )
  end

  def test_player1_paper_player2_scissors()
    @player1 = 'paper'
    @player2 = 'scissors'
    result = RockPaperScissors.check_winner(@player1, @player2)
    assert_equal('player2 won with scissors', result )
  end

  def test_player1_scissors_player2_rock()
    @player1 = 'scissors'
    #@player2 = 'rock'
    result = RockPaperScissors.check_winner(@player1, @player2)
    assert_equal('player2 won with rock', result )
  end

  def test_player1_scissors_player2_paper()
    @player1 = 'scissors'
    @player2 = 'paper'
    result = RockPaperScissors.check_winner(@player1, @player2)
    assert_equal('player1 won with scissors', result )
  end

end
