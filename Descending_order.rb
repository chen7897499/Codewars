def descending_order(n)
  #...
  a = []
  a = n.to_s.split('').map(&:to_i)
  a.sort.reverse.join('').to_s.to_i
end
