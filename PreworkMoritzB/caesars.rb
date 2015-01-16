#The Caesars Cipher:

#Conversation with the user. Getting the shift-number.
puts "This is the Caesars-Cipherer. Enter the Text here:"
string=gets.chomp
puts "Dou you want to type a custom shift-number? Else you will work with 3 as the default? Type yes or no."
answer=gets.chomp

#s=shift-number
if answer=="yes"
  puts "Now type in shift-number"
  s=gets.to_i
elsif answer=="no"
  s=3
end

#Initializing Arrays
text=[]
text=string.split(//)
outputtext=[]



#Assigns a Number to every character, including " " and punctuation
(0..text.size-1).each do |i|
  text[i]=text[i].ord+s
  outputtext[i]=text[i].chr
end

puts "Here is the ciphered text:"
puts outputtext.join
