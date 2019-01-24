######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   REQUIERED   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

require 'show'
require 'board'

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

class Player
	attr_accessor :name

	def initialize
		puts "Quel est le nom du joueur ?"
		@name = gets.chomp
	end

end