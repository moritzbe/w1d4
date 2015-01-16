#The Fizz-Buzz game. Mod. 3 = Fizz, Mod. 5 = Buzz. Numbers run up to 100.

#Return Fizz if number is mod. 3
def mod3(a)
    if a%3==0
    a="Fizz"
end
end

#Return Buzz if number is mod. 5
def mod5(a)
    if a%5==0
    a="Buzz"
end
end


#Numbers running from 1 to 100
a=0
while a <= 99
  a+=1
  if mod3(a)=="Fizz" || mod5(a)=="Buzz"
    puts "#{mod3(a)}#{mod5(a)}"
  else
    puts "#{a}"
end
end