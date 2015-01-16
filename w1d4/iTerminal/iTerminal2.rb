require 'terminfo'
require "pry"
TermInfo.screen_size

class Filereader
	def readfile (filename)
		@content = IO.read(filename)
	end

	def fileprocess
		slidesarray = []
		slidesarray = @content.split("\n----\n")
	end
end

class Slideshow

	def initialize(slidesarray, currentslide)
		default = 0
		@slidesarray = slidesarray
		@currentslide = default + currentslide
	    @verticalmiddle = TermInfo.screen_size[0]/2
		@horizontalmiddle = TermInfo.screen_size[1]/2
		@length = @slidesarray[@currentslide].length
		@nrspaces = @horizontalmiddle - @length/2
	end

	def printinmiddle
		@verticalmiddle.times do |line| 
			puts ""
		end
	end


	def createspaces
		@string = " " * @nrspaces
	end

	def makenewline
		createspaces
		@newline = @string + @slidesarray[@currentslide]
	end

	def show
		printinmiddle
		puts @newline
		printinmiddle
	end

	def requestcommand
	    print ">"
	    @command = gets.chomp
	    react
	end

	def nextt
		@currentslide += 1
		if @currentslide > @slidesarray.length - 1
			@currentslide = 0
		end
		test = Slideshow.new(@slidesarray, @currentslide)
        test.makenewline
        test.show
        requestcommand
	end

	def previous
		@currentslide -= 1
		if @currentslide == -1
			@currentslide = @slidesarray.size - 1
		end

		test = Slideshow.new(@slidesarray, @currentslide)
        test.makenewline
        test.show
        requestcommand
	end

	def auto
		stepnr = @slidesarray.length - 1
		stepnr.times do
			sleep 2 
		@currentslide += 1
		test = Slideshow.new(@slidesarray, @currentslide)
        test.makenewline
        test.show
		end
	end




	def react
		if @command == "next"
			nextt	
		elsif @command == "previous"
			previous
		elsif @command == "auto"
			auto
		else 
		    puts "wrong command"	
		end
	end
end



fr = Filereader.new
fr.readfile("slides")
@slidesarray = fr.fileprocess
# p @slidesarray
test = Slideshow.new(@slidesarray, 0)
test.makenewline
test.show
test.requestcommand

