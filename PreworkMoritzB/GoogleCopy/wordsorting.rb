#This function will return an array with the sentence's words sorted alphabetically.

def wordsorting
  puts "Type sentence or text to sort:"
  a=gets
  a.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '') 
  a.split
  puts a
end

wordsorting


#array=[]
#array.push(a.downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').split.sort)
#array.sort

#puts array
