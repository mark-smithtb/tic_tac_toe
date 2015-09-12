@board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

count = 2
	  	puts " "
	  	@board.each_slice(3) do |row|
	  		puts row.join("  |  ")
	  		unless count == 0
	  			puts "---+-----+----"
	  			count -=1
        end
      end
