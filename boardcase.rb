class Boardcase

	attr_accessor :@value,:@position  #value =>string "X","O"," "; position => A1,A2,..C3 # sa valeur en string (X, O, ou vide) + son identifiant de case

	def initialize(value, position)
		@value = value
		@position = position

	end

	boardcase1 = @board[1] = ["X", "0", " "]
	boardcase1 = @board[2] = ["X", "0", " "]
	boardcase1 = @board[3] = ["X", "0", " "]
	boardcase1 = @board[4] = ["X", "0", " "]
	boardcase1 = @board[5] = ["X", "0", " "]
	boardcase1 = @board[6] = ["X", "0", " "]
	boardcase1 = @board[7] = ["X", "0", " "]
	boardcase1 = @board[8] = ["X", "0", " "]
	boardcase1 = @board[9] = ["X", "0", " "]

end
