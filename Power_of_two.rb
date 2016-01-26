def power_of_two?(x)
  # code
  x.to_s(2).scan(/1/).size == 1 
end
