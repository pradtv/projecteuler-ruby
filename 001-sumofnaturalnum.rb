#Add all the natural numbers below one thousand that are multiples of 3 or 5.

sum = (1..999).select { |i| i%3==0 or i%5==0 }.reduce(&:+)
puts sum