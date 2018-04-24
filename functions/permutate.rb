while true

  puts "\nGive me a word, and I will find all possible combinations of the letters!\n Type 'exit' to leave"
  user_input = gets.strip.downcase

  user_input == "exit" ? exit() : ""

  if user_input.length > 6
    puts "No more than 6 characters, please!"
  else

    input_arr = user_input.split("")
    puts "\nThere are #{input_arr.permutation.to_a.uniq.count} combinations:"
    puts "\n" + input_arr.permutation.to_a.uniq.to_s.split('", "').join("")
  end
  
end
