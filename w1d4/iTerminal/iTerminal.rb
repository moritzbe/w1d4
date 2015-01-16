require 'terminfo'
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

class DisplayText
	def getvertmiddle
		@verticalmiddle = TermInfo.screen_size[0]/2
	end

	def printinmiddle
		@verticalmiddle.times do |line| 
			puts ""
		end
	end

	def printslide(slide)
		slide[Slideshow.getcurrentslide]
	end

	def gethormiddle
		@horizontalmiddle = TermInfo.screen_size[1]/2
	end 

	def getstringlength(string)
		@length = string.length
	end

	def createspaces
		nrspaces = @horizontalmiddle - @length/2
		@string = " " * nrspaces
	end

	def makenewslides(slide)
		newslides = []
		newslides[Slideshow.getcurrentslide] = @string + slide[Slideshow.getcurrentslide]
		newslides
	end
end

class Slideshow
	def initialize
		@currentslide = 0
	end


	def self.getcurrentslide
        @currentslide
	end

	def requestcommand
	    print ">"
	    @command = gets.chomp
	    react
	end

	def react
		if @command == "next"
			nextt
		elsif @command =="previous"
			previous
		else 
		puts "wrong command"	
		end
	end

	def nextt
		@currentslide +=1
	end

	def previous
		@currentslide -=1
	end
end



fr = Filereader.new
fr.readfile("slides")
slidesarray = fr.fileprocess


dp = DisplayText.new
dp.getvertmiddle
dp.printinmiddle
dp.gethormiddle
dp.getstringlength(slidesarray[0])
dp.createspaces
newslides = dp.makenewslides(slidesarray)


puts dp.printslide(newslides)
dp.printinmiddle

slideshow = Slideshow.new
slideshow.requestcommand



