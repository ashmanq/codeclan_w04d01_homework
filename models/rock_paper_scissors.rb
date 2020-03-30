class RockPaperScissors

  def self.check_winner(p1, p2)
    p1_choice = p1.downcase()
    p2_choice = p2.downcase()
    return "a draw with both players choosing #{p1_choice}!" if p1_choice == p2_choice

    if p1_choice == 'rock'
      return result_message('player 1', p1_choice) if p2_choice == 'scissors'
      return result_message('player 2', p2_choice) # happens if player2 = paper
    end

    if p1_choice == 'paper'
      return result_message('player 1', p1_choice) if p2_choice == 'rock'
      return result_message('player 2', p2_choice) # happens if player2 is scissors
    end

    if p1_choice == 'scissors'
      return result_message('player 1', p1_choice) if p2_choice == 'paper'
      return result_message('player 2', p2_choice) # happens if player2 is rock
    end
  end

  # The result_message method puts together the result_message to convey the result
  # of the game
  def self.result_message(player, choice)
    return "#{player} won with #{choice}!"
  end


end
