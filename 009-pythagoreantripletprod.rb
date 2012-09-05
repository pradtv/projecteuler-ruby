product = 0

(1..1000).each do |a|
  ((a+1)..1000).each do |b|
    c = 1000 - a - b
    if (a*a + b*b == c*c)
       product = a*b*c
       break
    end
  end
  break if product > 0
end

puts product