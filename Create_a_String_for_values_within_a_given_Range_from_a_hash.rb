def list_in_range(hash, range)
  # Return a string of the values from the hash within the given range
  # in the format Key (Value), Key (Value)
  a = hash.sort_by {|key, value| value}
  b = a.keep_if {|k,v| v.between?(range.first, range.last)}
  c = b.map {|k,v| "#{k} (#{v})"}
  d = c.join(", ")
end
