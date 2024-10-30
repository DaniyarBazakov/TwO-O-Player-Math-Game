require './classes/player'
require './classes/questions'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def switch_turn
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def play
    while @player1.alive? && @player2.alive?
      question = Question.new
      puts "#{@current_player.name}: #{question.generate_question}"
      print "> "
      answer = gets.chomp.to_i

      if question.check_answer(answer)
        puts "#{@current_player.name}: YES! You are correct."
      else
        puts "#{@current_player.name}: Seriously? No!"
        @current_player.lose_life
      end

      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      puts "----- NEW TURN -----" unless @player1.lives.zero? || @player2.lives.zero?

      switch_turn
    end

    winner = @player1.alive? ? @player1 : @player2
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end
