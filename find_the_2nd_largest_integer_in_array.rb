def find_2nd_largest(arr)
  arr.select {|a| a.is_a?Fixnum or a.is_a?Bignum }.uniq.sort[-2]
end

[4] pry(main)> Bignum.superclass
=> Integer
[5] pry(main)> Fixnum.superclass
=> Integer


def find_2nd_largest(arr)
  arr.grep(Integer).uniq.sort[-2]
end


def find_2nd_largest(arr)
  arr.uniq.select{|v| v.is_a?(Integer) }.sort.reverse()[1]
end
