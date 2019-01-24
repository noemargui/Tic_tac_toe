######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   REQUIERED   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

require 'pry'
require 'boardcase'
require 'show'

######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   METHODS   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

=begin

class Board
	attr_accessor :new_board # array/hash qui contient les BoardCases + @count_turn pour compter le nombre de coups joué

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
=end

def squares # on transforme les carrés vides en tableau
  [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
end