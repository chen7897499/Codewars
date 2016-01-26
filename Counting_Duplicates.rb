def duplicate_count(text)
    #your code here
    a = text.downcase
    a.split('').select {|e| a.count(e) > 1 }.uniq.count
end
