@sample_arr = []

while @sample_arr.count < 10
  @sample_arr.push(rand(1..100))
end

puts @sample_arr.to_s

def cycle(num)
  while num < @sample_arr.length - 1
    first = @sample_arr[num]
    second = @sample_arr[num + 1]
    if first > second
    else
      @sample_arr[num] = second
      @sample_arr[num + 1] = first
    end
    num += 1
    cycle(num)
  end
end

i = 0
loop do while i < 2
  i += 1
  cycle(0)
  end
  break
end

puts @sample_arr.to_s
