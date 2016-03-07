class String
  def is_upcase?
    # TODO: Program me
    self.gsub(/\s+/,"").chars.each do |c| 
      return false unless c =~ /[A-Z]/
    end
    return true
  end
end
