@arr = []

while @arr.count < 3
  @arr.push(rand(-100..100))
end

puts @arr.to_s

puts product = @arr[0] * @arr[1] * @arr[2]
if product <= 0
  puts "The result is negative\n "
else
  puts "The result is positive\n "
end
