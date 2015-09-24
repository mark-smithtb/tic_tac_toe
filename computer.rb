class Computer
  attr_accessor :symbol, :name

  def initialize(name, symbol)
    self.name = name
    self.symbol = symbol
  end

  def turn(board)
    available = board.find_all {|positions| positions.is_a? Integer}
    position_choice = available.sample
    board[position_choice - 1] = symbol
end
end
