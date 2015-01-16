#Fizzbuzz
def fizzbuzz(i)
  if i%3==0 && i%5==0 && i%7==0
    return "FizzBuzzPum"
  elsif i%3==0 && i%5==0
    return "FizzBuzz"
  elsif i%5==0 && i%7==0
    return "BuzzPum"
  elsif i%3==0 && i%7==0
    return "FizzPum"
  elsif i%3==0 
    return "Fizz"
  elsif i%5==0
    return "Buzz"
  elsif i%7==0 
    return "Pum"
  else 
    return i
  end
end


100.times do |i|
  puts fizzbuzz(i)
end 

