@board = [:x, 2, :x, 4, 5, 6, :x, 8, 9]


	wins = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
	[1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
	wins.each do |win|

			 win = win.find_all {|positions| @board[positions] != Symbol}
			 p win
				 end





# wins.each do |win|
# 	win.each do |positions|
# 	  if win.any? {|positions| @board[positions] == :x || :o}
# 			available = win.find_all {|positions| @board[positions] = Symbol}
# 		p available
# end
# end
# end
