# find the sum of the even-valued fibinaccii series.

def fibonacci_sum(limit)
  a,b = 0,1
  series = [0]
  while b < limit
    a,b = b,a+b
    series << a  
   end
   series.select(&:even?).reduce(&:+)
end

puts fibonacci_sum(4_000_000)
