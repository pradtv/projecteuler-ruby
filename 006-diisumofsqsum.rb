 puts (sqlsum = (1..100).reduce(&:+) **2) - ((1..100).map{|x| x**2}.inject(0, &:+))
 

 