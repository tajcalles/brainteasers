while true
  puts "\nGive me a phrase and I will alphabetize it!\n Type 'exit' to leave"
  user_input = gets.strip.downcase

  user_input == "exit" ? exit() : ""

  input_arr = user_input.split("").to_a
  puts "\n" + input_arr.sort_by(&:downcase).join().strip


end
