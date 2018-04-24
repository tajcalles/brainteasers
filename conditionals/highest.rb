@arr = []

while @arr.count < 5
  @arr.push(rand(-100..100))
end

puts @arr.to_s

puts "The highest number is: #{@arr.sort!.last}"
