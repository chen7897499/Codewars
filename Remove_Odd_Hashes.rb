def remove_odd_hashes(array, key_1, key_2)
  #you can check for "%" operator
  result = []
  array.each do |item|
    if((item[key_1]+item[key_2]) % 2 == 0)
      result << item
    end
  end
  return result
end
