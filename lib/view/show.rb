######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   REQUIERED   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

require ''

######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   METHODS   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#
=begin
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
=end

def print_grid # on affiche la structure de la grille, vide au début, puis completés au fur et à mesure
  puts
  puts "   1   2   3"
  puts "A  #{@a1} | #{@a2} | #{@a3} "
  puts "  ---|---|---"
  puts "B  #{@b1} | #{@b2} | #{@b3} "
  puts "  ---|---|---"
  puts "C  #{@c1} | #{@c2} | #{@c3} "
  puts
  check_for_winner # on vérifie qu'il n'y ai pas déja un gagnant
end