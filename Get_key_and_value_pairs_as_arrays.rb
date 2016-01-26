def keysAndValues(data)
  # TODO: complete
  keys = []
  values = []
  data.each_key do |key|
   keys << key
  end
  
  data.each_value do |val|
    values << val
  end
  
  [keys, values]
end
