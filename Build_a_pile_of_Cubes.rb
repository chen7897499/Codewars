def find_nb(m)
    # your code
    sum = 0;
    i = 1;
    while sum < m do
      sum += i**3
      i += 1
    end
    if sum == m
       return (i-1)
    else
       return -1
    end
end
