require 'set' #使用to_set必须require这个

def is_anagram(test, original)
  #your code here
  a = test.downcase.split('').to_set ^ original.downcase.split('').to_set
  a.empty?
end
