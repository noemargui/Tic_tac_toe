######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   REQUIERED   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

require ''

######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   METHODS   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#
=begin

class Player
	#la classe a 2 attr_reader
	
	attr_reader # son nom + sa valeur (X ou O)

	def initialize
    #TO DO : doit régler son nom et sa valeur
  end

end
=end


def create_player
   puts "Joueur 1, quel est ton nom ?"
   player1_name = gets.chomp
   puts "Hello #{player1_name} ! Pour cette partie, ton symbole sera le X"
   puts ""
   puts "Joueur 2, quel est ton nom ?"
   player2_name = gets.chomp
   puts "Hello #{player2_name} ! Pour cette partie, ton symbole sera le O"
end