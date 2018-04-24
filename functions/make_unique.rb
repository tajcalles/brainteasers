while true

  puts "\n Give me a phrase, and I will remove duplicate characters!\n Type 'exit' to leave"
  user_input = gets.strip

  user_input == "exit" ? exit() : ""

  input_arr = user_input.split("").to_a
  puts "\n" + input_arr.uniq!.join().strip
end
