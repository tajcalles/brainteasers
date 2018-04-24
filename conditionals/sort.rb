@arr = []

while @arr.count < 3
  @arr.push(rand(-100..100))
end

puts @arr.sort!.to_s
