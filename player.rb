class Player
  attr_accessor :symbol, :name

  def initialize(name, symbol)
    self.name = name
    self.symbol = symbol
  end
  def turn(board)
    puts "#{name} please chose a postition from 1 to 9."
    position_choice = gets.chomp
    position_choice = position_choice.to_i
    if board[position_choice - 1] != :x && board[position_choice - 1] != :o
      board[position_choice - 1] = symbol
    elsif board[position_choice - 1] == :x || board[position_choice - 1] == :o
      puts "You can not make the move try again."
      @count -= 1
    end
  end
end
