#Fizzbuzz
def modulo(i,number,answer)
  if i%number==0
    answer
  end
end

def fizzbuzz(i)
  output="#{modulo(i,3,"fizz")}#{modulo(i,5,"buzz")}#{modulo(i,7,"pum")}"
  if output.size>=1
    return output
  else
    return i
  end
end

100.times do |i|
  puts fizzbuzz(i)
end