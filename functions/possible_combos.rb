while true

  puts "\n Give me a phrase, and I will find possible combinations of the words! \nType 'exit' to leave"
  user_input = gets.strip.downcase

  user_input == "exit" ? exit() : ""

  puts "How many words to combine?"
  word_count = gets.strip.to_i

  input_arr = user_input.split(" ")
  puts "\nThere are #{input_arr.combination(word_count).count} combinations:"
  puts "\n" + input_arr.combination(word_count).to_a.to_s.split('", "').join(" ")
  
end
