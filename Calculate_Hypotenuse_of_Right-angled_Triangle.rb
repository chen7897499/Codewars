require 'complex'

def calculateHypotenuse(a,b)
  # TODO: complete calculateHypotenuse so that it returns the hypotenuse length
  # for a triangle with sides of length a, b, and c, where c is the hypotenuse.
  # The solution should verify that inputs are valid numbers (both above zero).
  Math.sqrt(a**2+b**2).round(3)
end
