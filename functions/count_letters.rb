while true

  puts "\nGive me a phrase, and I will count the number of any letter!\nType 'exit' to leave"
  user_input = gets.strip.downcase

  user_input == "exit" ? exit() : ""

  puts "What letter should I count?"

  which_letter = gets.strip.downcase

  def count(num, length, letter)
    alphahash = Hash.new { |hash, key| hash[key] = 0 }
    while num < length
      current_letter = @input_arr[num]
      alphahash[current_letter] += 1
      num += 1
    end
    puts "\nNumber of #{letter} = #{alphahash[letter]}"
  end

  @input_arr = user_input.split("").to_a

  count(0, @input_arr.count, which_letter)
  
end
