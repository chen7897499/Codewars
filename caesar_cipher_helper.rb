class CaesarCipher
  def initialize(shift)
    #your code here
    @shift = shift
  end

  def encode(string)
    puts string
    string.chars.map do |a|
      if a.match(/\p{Alpha}/)
        if (a.downcase.ord+@shift) >  122
          ((97+((a.downcase.ord+@shift)-122))-1).chr.upcase
        else
          (a.ord+@shift).chr.upcase
        end
      else
        a
      end
    end.join
  end
  
  def decode(string)
    #your code here
    string.chars.map do |a|
      if a.match(/\p{Alpha}/)
        if (a.downcase.ord-@shift) <=  96
          (122-(96-(a.downcase.ord-@shift))).chr.upcase
        else
          (a.ord-@shift).chr.upcase
        end
      else
        a
      end
    end.join
  end
end


#better solution
class CaesarCipher
  def initialize(shift)
    @shift = shift
    @chrs = ('a'..'z').to_a * 255
  end

  def encode(string, meth=:+)
    string.downcase.chars.to_a.inject('') do |crypt, chr|
      crypt << (@chrs.include?(chr) ? @chrs[@chrs.index(chr).send(meth, @shift)] : chr)  ##重要的在这里
      crypt
    end.upcase
  end
  
  def decode(string)
    encode(string, :-)
  end
end
