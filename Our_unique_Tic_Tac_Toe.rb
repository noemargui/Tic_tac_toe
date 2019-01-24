require 'colorize'

def intro_game # intro type borne d'arcade pour notre morpion
          puts %q[
        ___________.__         __                 __
        \__    ___/|__| _____ |  |______   ____  |  |__ ____  ___
           |   |   |  |/ ___| |   __\__ \_/ ___\ |   __|    |/ __|
           |   |   |  \  \___ |  |  / __ \  \___ |  |  | || |  \/_
           |___|   |__|\____| |__| (____ /\____\ |__|  |____|\____|
                                                 ].yellow
          
                    puts %q[    
                                   1   2   3
                                A  O | O | X
                                  ---|---|---
                                B  O | x | O
                                  ---|---|---
                                C  X | O | X
                            ].blue
  
          puts %q[
            ********************** Les Règles ***********************
          ].green
          puts %q[
                           Pour jouer, rentre les
                       coordonnées d'une case (de A1 à C3)

                        Ne joues par sur une case occupée,
                        au risque de passer ton tour...
          ].green
          puts %q[
                         Pour quitter, appuies sur q ;)
          ].green
          puts %q[
            ********************* C'est parti ! *********************
          ].green
end

def create_players # on définit le nom des deux jours, et on leur assigne un symbole X ou O
   puts "Joueur 1, choisis ton pseudo de Morpionneur !"
   print "> "
   player1_name = gets.chomp
   puts ""
   puts "Hello #{player1_name} ! Pour cette partie, ton symbole sera le X."
   puts ""
   puts "Joueur 2, à ton tour de choisir ton pseudo !"
   print "> "
   player2_name = gets.chomp
   puts ""
   puts "Hello #{player2_name} ! Pour cette partie, ton symbole sera le O."
end

def empty_board # on initialise une nouvelle grille avec 9 espaces vides
  @a1 = " "
  @a2 = " "
  @a3 = " "
  @b1 = " "
  @b2 = " "
  @b3 = " "
  @c1 = " "
  @c2 = " "
  @c3 = " "
end

def print_grid # on affiche la structure de la grille, vide au début, puis completés au fur et à mesure
  puts ""
  puts "      1        2         3     ".yellow
  puts "           |         |         ".yellow
  puts "A     #{@a1}    |    #{@a2}    |    #{@a3}    ".yellow
  puts "           |         |         ".yellow
  puts "  ---------|---------|---------".yellow
  puts "           |         |         ".yellow
  puts "B     #{@b1}    |    #{@b2}    |    #{@b3}    ".yellow
  puts "           |         |         ".yellow
  puts "  ---------|---------|---------".yellow
  puts "           |         |         ".yellow
  puts "C     #{@c1}    |    #{@c2}    |    #{@c3}    ".yellow
  puts "           |         |         ".yellow
  puts ""
  check_for_winner # on vérifie qu'il n'y ai pas déja un gagnant
end

def check_for_winner
  winning_combos.each do |combos|
    if combos[0] == "O" && combos[1] == "O" && combos[2] == "O"
      puts "Le O a gagné! Longue vie au O.".green
      exit
    elsif combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
      puts "Le X a gagné! Longue vie au X.".green
      exit
    end
  end
end

def winning_combos # on définit les 8 combinaisons gagnantes
  [[@a1, @a2, @a3],
  [@a1, @b2, @c3],
  [@a1, @b1, @c1],
  [@b1, @b2, @b3],
  [@c1, @c2, @c3],
  [@c1, @b2, @a3],
  [@a2, @b2, @c2],
  [@a3, @b3, @c3]]
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

  puts "Joueur n°1 : où veux-tu jouer ?".blue
  user_choice = gets.chomp
  user_choice_hash.each do |choice, square|
    if user_choice == choice
      if check_validity(square) == false
        x_turn
      end
      square.sub!(" ", "X")
      print_grid
    elsif user_choice == "q"
      exit
    end
  end
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

  puts "Joueur n°2 : où veux-tu jouer ?".blue
  user_choice = gets.chomp
  user_choice_hash.each do |choice, square|
    if user_choice == choice
      if check_validity(square)
        square.sub!(" ", "O")
        print_grid
      end
    elsif user_choice == "q"
      exit
    end
  end
end

def check_validity square_availability # on vérifie que le choix du joueur est valide (que la case est bien libre)
  if square_availability == " "
    true
  else
    puts "L'espace est déja pris mon pote! On t'avait prévenu, tu passes ton tour.." # si elle ne l'est pas, on lui dit, et il passe son tour
  end
end

def squares # on liste les espaces de la grille dans un tableau, pour les manipuler plus facilement
  [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
end


def run_game
  intro_game
  create_players
  empty_board
  while true
    print_grid
    x_turn
    o_turn
  end
end

run_game