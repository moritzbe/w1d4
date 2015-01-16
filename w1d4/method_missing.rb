require "date"


puts "Put some input:"

input = gets.chomp

my_code = "Date.#{input}"
puts eval my_code



class MySpecialHash
	def method_missing(m, *args, &block)
		if args.size > 0
		@hash = {}	
		@hash[m] = args
	    end
	    @hash[m]
	end
end

d = MySpecialHash.new
d.hello("hey")
puts d.hello
d.what("this")
puts d.what
