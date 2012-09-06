def factors(n)
  return 1 if n == 1
  fact = []
  (1..n).each do |x|
    if n%x == 0
      fact << x
    end
  end
  fact.reduce(&:+)-fact.last
end  

def sum_of_amicalble_numbers
  amicable_sum = []
  (1..9999).each do |i|
     number = factors(i)
     amicable = factors(number)
     amicable_sum << i if (number != amicable && amicable == i)
  end
     amicable_sum.reduce(&:+)
end  
puts sum_of_amicalble_numbers

