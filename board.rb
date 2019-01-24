######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   REQUIERED   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

require ''

######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   METHODS   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#



class Board
	attr_accessor # array/hash qui contient les BoardCases + @count_turn pour compter le nombre de coups joué

	def initialize
		# il faut créer 9 instances Boardcases
		# rangées dans l'atr accessor array de la classe
	end

	def play_turn
    # on demande au bon joueur ce qu'il souhaite faire
    # on change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    # on vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end

end