sum_of_digits = (2**1000).to_s.split(//).map(&:to_i).reduce(&:+)
puts sum_of_digits    