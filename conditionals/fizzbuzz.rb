for i in 1..100
  if i % 3 == 0 && i % 5 == 0
    print "FizzBuzz, "
  elsif i % 5 == 0
    print "Buzz, "
  elsif i % 3 == 0
    print "Fizz, "
  else
    print "#{i}, "
  end
end
puts "" 
