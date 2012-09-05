
class Fixnum
  def prime?
    return false if self < 2
    (2..(Math.sqrt(self).ceil)).each do |i|
      return false if self%i == 0
    end
    true
  end
end

def prime_number_10001
  prime_series = [2]
  i=3
  while prime_series.length < 10001
    prime_series << i if i.prime?
    i = i+2
  end
  prime_series.last
end

puts prime_number_10001