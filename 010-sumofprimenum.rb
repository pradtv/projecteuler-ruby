class Fixnum
  def prime?
    return false if self < 2
    (2..(Math.sqrt(self).ceil)).each do |i|
      return false if self%i == 0
    end
    true
  end
end

def sum_of_prime_number
  prime_series = [2]
  i=3
  while prime_series.last < 2_000_000
    prime_series << i if i.prime?
    i = i+2
  end
  prime_series.reduce(&:+) - prime_series.last
end

puts sum_of_prime_number