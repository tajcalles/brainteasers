@factors_arr = []

while true

  puts "\nGive me a number, and I will find its factors!\nType'0' to leave"

  def divide(num)
    base_num = num
    while num > 0
      base_num % num == 0 ? @factors_arr.push(num) : ""
      num -= 1
    end
    puts "The factors of #{base_num} are: #{factors_arr.to_s}"
    @factors_arr = []
  end

  user_input = gets.strip
  user_input == "0" ? exit() : user_input = user_input.to_i
  user_input == 0 ? ( puts "Invalid input" ) : divide(user_input)

end
