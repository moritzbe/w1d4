#Fizzbuzz
def modulo(i,number,answer)
  if i%number==0
    answer
  end
end



def fizzbuzz
  if i%3==0 || i%5==0 || i%7==0
    return "#{modulo(i,3,"fizz")}#{modulo(i,5,"buzz")}#{modulo(i,7,"pum")}"
  else
    return 
  end
end


100.times do |i|
  puts fizzbuzz(i)
end