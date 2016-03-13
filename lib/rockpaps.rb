require "rockpaps/version"

module Rockpaps
  class Rps
    def initialize
      play
    end

    def play
      introduction
      choice1 = human_choice
      choice2 = computer_choice
      puts compare( choice1, choice2 )
    end

    def introduction
      puts "===========================
      Hello there, This is RockPaperScissors,
      Choose R - P - S for your move !
      ===========================\n"
    end

    def human_choice
      loop do
        puts "Choose Between R - P - S !\n"
        input = gets.chomp.upcase
        return input if ["R", "P", "S"].include?(input)
      end
    end

    def computer_choice
      ["R", "P", "S"].sample
    end

    def compare( choice1, choice2 )
      result = {
        "R" => {
          "R" => "Both player choose Rock, it's a Tie!",
          "P" => "The ai chose Paper, you Loose !",
          "S" => "You break the scissors, you Win !"
        },
        "P" => {
          "R" => "You eat the rock, you Win!",
          "P" => "Both player choose Paper, it's a Tie!",
          "S" => "The scissors cuts you, you Loose !"
        },
        "S" => {
          "R" => "The Rock break you, you Loose!",
          "P" => "The ai chose Paper, you Win !",
          "S" => "Both player choose Scissors, it's a Tie!"
        }
      }
      result[choice1][choice2]
    end
  end
end
