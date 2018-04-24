while true

  puts "\nGive me a phrase, and I will count the number of each letter!\nType 'exit' to leave"
  user_input = gets.strip.downcase

  user_input == "exit" ? exit() : ""

  def count(num, length)
    alphahash = Hash.new { |hash, key| hash[key] = 0 }
    while num < length
      current_letter = @input_arr[num]
      alphahash[current_letter] += 1
      num += 1
    end
    puts alphahash.to_a.sort!to_s
  end

  @input_arr = user_input.split("").to_a

  count(0, @input_arr.count)

end   
