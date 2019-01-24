class Application

	def perform
		# TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
		@board = Board.new # on met en place le board
		@player_1 = Player.new("Madame X", :x, @board)
    @player_2 = Player.new("Mister Y", :y, @board)
	end

end