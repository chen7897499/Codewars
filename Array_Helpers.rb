class Array
  def square
    # create your square method here
    self.map {|a| a*a }
  end

  # now fill in the rest
  def cube()
    self.map {|a| a*a*a }
  end
   
  def average()
    self.inject(:+) / self.count
  end
  
  def sum()
    self.inject(:+)
  end
  
  def even()
    self.select(&:even?)
  end
  
  def odd()
    self.select(&:odd?)
  end
end
