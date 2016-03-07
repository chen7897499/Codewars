class String
  def is_upcase?
    # TODO: Program me
    return false if self.nil?
    self.gsub(/\s+/,"").chars.each do |c| 
      return false if c =~ /[a-z]/
    end
    return true
  end
end
