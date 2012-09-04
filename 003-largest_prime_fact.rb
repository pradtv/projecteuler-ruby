# largest prime factor of a composite number.
class Fixnum
  def prime?
    return false if self < 2
    (2..(Math.sqrt(self).ceil)).each do |i|
      return false if self%i == 0
    end
    true
  end
end

def largest_prime_factor(num)
  (num/2).floor.downto(2) do |i|
    return i if num%i == 0 and i.prime?
  end
end

puts largest_prime_factor(13195)