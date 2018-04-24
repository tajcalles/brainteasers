@sum_three = [0]
@sum_five = [0]
@sum_fifteen = [0]

def sum(total, arr, num)
  for i in 1..total
    arr[0] += (i + num)
  end
end

sum(333, @sum_three, 3)
sum(199, @sum_five, 5)
sum(66, @sum_fifteen, 15)

puts @sum_three[0] + @sum_five[0] - @sum_fifteen[0]
