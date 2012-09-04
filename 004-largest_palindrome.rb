def largest_palindrome
  product = []
  (100..999).each do |i|
    (100..999).each do |j|
      multiple = i*j
      product << multiple 
    end 
  end  
  product.select(&:palindrome?).max
end

class Fixnum
  def palindrome?
    reminder = 0
    reversenumber = 0
    num = self
    while(num>0)
      reminder = num %10
      num = num/10.floor
      reversenumber = reversenumber*10+reminder
    end
    if self == reversenumber
      return true
    else 
      return false
    end     
  end
end

puts largest_palindrome