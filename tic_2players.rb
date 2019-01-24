require 'colorize'

def create_player
   puts "Joueur 1, quel est ton nom ?"
   player1_name = gets.chomp
   puts "Hello #{player1_name} ! Pour cette partie, ton symbole sera le X"
   puts ""
   puts "Joueur 2, quel est ton nom ?"
   player2_name = gets.chomp
   puts "Hello #{player2_name} ! Pour cette partie, ton symbole sera le O"
end

def new_board # on définit la méthode pour créer et conserver les variables pour les espaces vides de la grille
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

def squares # on transforme les carrés vides en tableau
  [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]

end

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

def start_game
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

def run_game
  start_game
  create_player
  new_board
  while true
    print_grid
    x_turn
    o_turn
  end
end

run_game
