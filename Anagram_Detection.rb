def is_anagram(test, original)
  #your code here
  a = test.downcase.split('').to_set ^ original.downcase.split('').to_set
  a.empty?
end
