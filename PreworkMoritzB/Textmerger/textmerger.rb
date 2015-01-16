#Program to merge two files. (i.e. copy the content of file one into file two)
puts "What is the source file that has to be copied? For example type file.txt"
sourcename=gets.chomp
source=IO.read(sourcename)
puts "This is in the source file: #{source}"

puts "What is the destination file?"
targetname=gets.chomp
IO.write(targetname, source)
puts "Text of file #{sourcename} is now merged in file #{targetname}."