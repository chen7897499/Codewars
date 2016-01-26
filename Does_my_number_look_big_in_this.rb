def narcissistic?( value )
  # Code me
  length = value.to_s.length
  sum = 0
  array = []
  array = value.to_s.split('').map(&:to_i)
  array.each do |a|
    sum += a ** length
  end
  
  value == sum ? true : false
end
