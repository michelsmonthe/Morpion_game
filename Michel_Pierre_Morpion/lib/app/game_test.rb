require 'pry'

require_relative 'player'
require_relative 'board'
# require_relative 'board_case'

class Game
    attr_accessor :players, :board, :current_player, :other_player

    def initialize(players, board = Board.new)
    	@players = players
    	@board = board
    	@current_player, @other_player = players.shuffle
    end

    def switch_players
		@current_player, @other_player = @other_player, @current_player
	  end

	  def solicit_move
  		puts "#{current_player.name}: Enter a number between 1 and 9 to make your move"
	  end

	  def get_move(human_move = gets.chomp)
  		human_move_to_coordinate(human_move)
	  end

	private

	  def human_move_to_coordinate(human_move)
  	  mapping = {
  	    "A1" => array_board_cases[0][0],
  	    "A2" => array_board_cases[0][1],
  	    "A3" => array_board_cases[0][2],
  	    "B1" => array_board_cases[1][0],
  	    "B2" => array_board_cases[1][1],
  	    "B3" => array_board_cases[1][2],
  	    "C1" => array_board_cases[2][0],
  	    "C2" => array_board_cases[2][1],
  	    "C3" => array_board_cases[2][2]
  	  }
  	  mapping[human_move]
	  end

  	def game_over_message
  		if board.game_over == :winner
  			return "#{current_player.name} a gagné !"
  		elsif board.game_over == :draw
    			return "La partie se termine sur une égalité."
    		end
  	end

  	def play
  	  puts "#{current_player.name} a été sélectionné aléatoirement comme étant le premier joueur."

  	  while true
  	    board.formatted_grid
  	    puts ""
  	    puts solicit_move
  	    x, y = get_move
  	    board.set_cell(x, y, current_player.color)

  	    if board.game_over
  	      puts game_over_message
  	      board.formatted_grid
  	      return
  	    else
  	      switch_players
  	    end

  	  end

	  end

end
