require "pry"


class Movereader
	def splitmoves(moves)
		moves = moves.split("\n")
		moves = moves.map do |item|
			item.split(" ")
		end
	end
end


class Boardreader
	def splitboard(board)
		linearray = board.split("\n")
		boardarray = linearray.map do |item|
			item.split (" ")
		end
	end
end

class Boardobject
	def megahash(board)
		hashboard = {}
		for i in 1..8 do 
		hashboard["a#{i}"] = board[0][i-1]
		hashboard["b#{i}"] = board[1][i-1]
		hashboard["c#{i}"] = board[2][i-1]
		hashboard["d#{i}"] = board[3][i-1]
		hashboard["e#{i}"] = board[4][i-1]
		hashboard["f#{i}"] = board[5][i-1]
		hashboard["g#{i}"] = board[6][i-1]
		hashboard["h#{i}"] = board[7][i-1]
		end
		hashboard
	end
end

class Checker
	def initialize (movearray, hashboard)
		@movearray = movearray
		@hashboard = hashboard
	end
    def identify_figure
    	for i in 0..@movearray.size-1 do
    	    if @hashboard[@movearray[i][0]] == "wP"
    	    	#puts @movearray[i][1]
    	    	Checker_P.new(@movearray[i][0], @movearray[i][1], "-1").forward




    	    elsif @hashboard[@movearray[i][0]] == "bP"
    	    	puts i
    	    	Checker_P.new(@movearray[i][0], @movearray[i][1], "1").forward




    	    elsif @hashboard[@movearray[i][0]] == "wP"
    	    	puts i


    			
    		end
    	end
    end
end

class Checker_P
	def initialize(position, nextposition, direction)
		position2 = position[0].ord + direction.to_i

		@shouldbe = "#{position2.chr}#{position[1]}"
		@nextposition = nextposition
	end

	def forward
		binding.pry	
		if @shouldbe == @nextposition && @hashboard[@nextposition] == "--"
	#@hashboard[@nextposition] == @hashboard[@nextposition]
			puts "is valid, and nothing happens yet."
		else
			puts "INVALID"
		end
	end
end











moves = IO.read("simple_moves.txt")
originalboard = IO.read("simple_board.txt")

#Array containing start and end
movearray = Movereader.new.splitmoves(moves)
board = Boardreader.new.splitboard(originalboard)
hashboard = Boardobject.new.megahash(board)
check = Checker.new(movearray, hashboard)
check.identify_figure


