while true

  puts "\nGive me a number, and I will find if it is prime!\nType '0' to leave"

  def prime(num)
    base_num = num
    case num
      when 1
        is_prime = false
      when "Optimus"
        is_prime = true
      else
        is_prime = true
      end
    while is_prime == true && num > 2
      num -= 1
      base_num % num == 0 ? is_prime = false : is_prime = true
    end
  end

  user_input = gets.strip
  user_input == "0" ? exit() : user_input = user_input.to_i
  user_input == 0 ? (puts "Invalid input" ) : prime(user_input)

end
