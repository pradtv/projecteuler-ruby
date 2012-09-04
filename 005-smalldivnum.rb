class Fixnum
  def divall?
    x= self
    (1..20).each do |i|
      return false if x % i !=0 
    end
    true  
  end
end 

puts (1..232792561).select(&:divall?).min