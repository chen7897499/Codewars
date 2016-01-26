# return an array
def fizzbuzz(n)
  result = []
  (1..n).each do |a|
    if a % 3 == 0 && a % 5 == 0
      result << "FizzBuzz"
    elsif a % 5 == 0
      result << "Buzz"
    elsif a % 3 == 0
      result << "Fizz"
    else 
      result << a
    end
   end
   
   return result
end
