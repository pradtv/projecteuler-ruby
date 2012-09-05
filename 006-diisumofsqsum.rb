
def difference
  sum_of_squares = (1..100).map{|x| x**2}.inject(0, &:+)
  squares_of_sums = (1..100).reduce(&:+) **2
  squares_of_sums - sum_of_squares
end  

puts difference 