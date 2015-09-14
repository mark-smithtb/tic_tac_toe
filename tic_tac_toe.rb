require_relative 'player.rb'

class Game
  attr_accessor :current_player, :count
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @current_player = current_player
    @count = 1
    @count = count

    def print_board
      board_count = 2
      puts ' '
      @board.each_slice(3) do |row|
        puts row.join('  |  ')
        unless board_count == 0
          puts '---+-----+----'
          board_count -= 1
        end
      end
      puts ' '
    end

    def coin_toss
      if rand.round == 0
        @sym_1 = :x
        @sym_2 = :o
      else
        @sym_1 = :o
        @sym_2 = :x
      end
    end
    def get_players
      puts 'Player 1 What is your name?'
      player1_name = gets.chomp
      puts "would you like to play the computer"
      answer.gets.chomp
      puts 'player 2 what is your name?'
      player2_name = gets.chomp
      coin_toss
      @player_1 = Player.new(player1_name, @sym_1)
      @player_2 = Player.new(player2_name, @sym_2)
    end

    def find_turn
      if @player_1.symbol == :x
        if count.even?
          @current_player = @player_2
        else
          @current_player = @player_1
        end
      else
        if count.even?
          @current_player = @player_1
        else
          @current_player = @player_2
        end
      end
    end

    def turn(player)
      puts "#{player.name} please chose a postition from 1 to 9."
      position_choice = gets.chomp
      position_choice = position_choice.to_i
      if @board[position_choice - 1] != :x && @board[position_choice - 1] != :o
        @board[position_choice - 1] = player.symbol
      elsif @board[position_choice - 1] == :x || @board[position_choice - 1] == :o
        puts "You can not make the move try again."
        @count -= 1
      end
    end

    def check_win(current_player)
      wins = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
      [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
      wins.each do |win|
        win.all? do |positions|
          if win.all? { |positions| @board[positions] == current_player.symbol }
            puts "#{current_player} wins"
            exit
          end
        end
      end
    end

    def play
      get_player
      until @count == 10
        find_turn
        print_board
        turn(@current_player)
        check_win(current_player)
        @count += 1
      end
      puts 'tie'
    end
  end

  game = Game.new
  game.play

