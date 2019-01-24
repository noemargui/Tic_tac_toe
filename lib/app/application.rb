######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   REQUIERED   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

require ''

######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   METHODS   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

=beginn

class Application

	def perform
		# TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
		@board = Board.new # on met en place le board
		@player_1 = Player.new("Madame X", :x, @board)
    @player_2 = Player.new("Mister Y", :y, @board)
	end

end
=end

class Application

	def perform
	  home_page
	  @player.create_player
	  new_board
	  while true
	    print_grid
	    x_turn
	    o_turn
	  end
	end

	def home_page
	          puts %q[
	        ___________.__         __                 __
	        \__    ___/|__| _____ |  |______   ____  |  |__ ____  __
	           |   |   |  |/ ___| |   __\__ \_/ ___\ |   __|    |/ _|
	           |   |   |  \  \___ |  |  / __ \  \___ |  |  | || | |___
	           |___|   |__|\___ | |__| (____ /\___ \ |__|  |____|\____|
	                            \/          \/     \/].yellow
	          
	                    puts %q[    
	                                   1   2   3
	                                A  O | O | X
	                                  ---|---|---
	                                B  O | x | O
	                                  ---|---|---
	                                C  X | O | X
	                            ].blue
	  
	          puts %q[
	            *********************** Les Règles **********************
	          ].green
	          puts %q[
	                           Pour jouer, rentre les
	                       coordonnées d'une case (de A1 à C3)

	                        Ne joues sur une case occupée,
	                        au risque de passer ton tour...
	          ].green
	          puts %q[
	                         Pour quitter, appuies sur q ;)
	          ].green
	          puts %q[
	            ********************* C'est parti ! *********************
	          ].green
	end

end