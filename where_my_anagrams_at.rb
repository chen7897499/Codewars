def anagrams(word, words)
  result = []
  words.each do |c|
    if word.chars.sort == c.chars.sort
      result << c
    end
  end
  result
end
