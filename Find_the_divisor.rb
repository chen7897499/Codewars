def divisors(n)
  #your code here
  r = (2..n-1).to_a.select {|a| n % a == 0 }
  
  if r.count == 0
    "#{n} is prime"
  else 
    return r
  end
end
