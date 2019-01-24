######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   REQUIERED   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

require ''

######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   METHODS   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

class Show

	def show_board(board)
		#TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
	  puts " #{board[0]} | #{board[1]} | #{board[2]} "
	  puts "-----------"
	  puts " #{board[3]} | #{board[4]} | #{board[5]} "
	  puts "-----------"
	  puts " #{board[6]} | #{board[7]} | #{board[8]} "
	end

	board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

	show_board(board)
	show_board(board)
	show_board(board)

end