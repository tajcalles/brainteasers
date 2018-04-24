while true

  puts "\nGive me a phrase, and I will pascalize it!\nType 'exit' to leave"
  user_input = gets.strip.downcase

  user_input == "exit" ? exit() : ""

  @input_arr = user_input.split(" ").to_a

  def pascalize(num, length)
    while num < length
      @input_arr[num].capitalize!
      num += 1
    end
  end

  pascalize(0, @input_arr.count)
  puts @input_arr.join(" ")

end 
