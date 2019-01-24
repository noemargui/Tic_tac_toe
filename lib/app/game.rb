######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   REQUIERED   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

require ''

######################################################################################
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   METHODS   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#

=begin
class Game
  attr_accessor #le current_player (égal à un objet Player) + le status (en cours, nul ou un objet Player s'il gagne) + le Board et un array contenant les 2 joueurs.

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    

end
=end

def win_combos # on définit les 8 combinaisons gagnantes
  [[@a1, @a2, @a3],
  [@a1, @b2, @c3],
  [@a1, @b1, @c1],
  [@b1, @b2, @b3],
  [@c1, @c2, @c3],
  [@c1, @b2, @a3],
  [@a2, @b2, @c2],
  [@a3, @b3, @c3]]
end

def check_validity square_availability # on vérifie que le choix du joueur est valide (que la case est bien libre)
  if square_availability == " "
    true
  else
    puts "That space is taken. Get your own!" # si elle ne l'est pas, on lui dit, et il passe son tour
  end
end

def x_turn
  user_choice_hash = {"A1" => @a1, # on map les inputs du joueur avec les bonnes cases
                      "A2" => @a2,
                      "A3" => @a3,
                      "B1" => @b1,
                      "B2" => @b2,
                      "B3" => @b3,
                      "C1" => @c1,
                      "C2" => @c2,
                      "C3" => @c3}

  puts "Joueur n°1 : où veux-tu jouer ?"
  user_choice = gets.chomp
  user_choice_hash.each do |choice, square|
    if user_choice == choice
      if check_validity(square) == false
        x_turn
      end
      square.sub!(" ", "X")
      print_grid
    elsif user_choice == "q" or user_choice == "quit"
      exit
    end
  end
  #check_for_winner
end

def o_turn
  user_choice_hash = {"A1" => @a1, # on map les inputs du joueur avec les bonnes cases
                      "A2" => @a2,
                      "A3" => @a3,
                      "B1" => @b1,
                      "B2" => @b2,
                      "B3" => @b3,
                      "C1" => @c1,
                      "C2" => @c2,
                      "C3" => @c3}

  puts "Joueur n°2 : où veux-tu jouer ?"
  user_choice = gets.chomp
  user_choice_hash.each do |choice, square|
    if user_choice == choice
      if check_validity(square)
        square.sub!(" ", "O")
        print_grid
      end
    elsif user_choice == "q" or user_choice == "quit"
      exit
    end
  end
  #check_for_winner
end

def check_for_winner
  win_combos.each do |combos|
    if combos[0] == "O" && combos[1] == "O" && combos[2] == "O"
      puts "O a gagné! Bravo!"
      exit
    elsif combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
      puts "X a gagné! Bravo!"
      exit
    end
  end
end