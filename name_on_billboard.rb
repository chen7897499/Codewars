def billboard(name, price = 30)
  #your code here
  name.length.times.inject(0){|a,b| a+price} 
end

