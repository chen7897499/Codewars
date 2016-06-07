gets.to_i.times do
    a = gets.to_i
    p1 = (a-1)/3
    p2 = (a-1)/5
    p3 = (a-1)/15
    sum = ((3*p1*(p1+1))/2) + ((5*p2*(p2+1))/2) - ((15*p3*(p3+1))/2) 
    puts sum
end

#https://www.hackerrank.com/contests/projecteuler/challenges/euler001
