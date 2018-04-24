while true

  puts "\n Give me a phrase and I will find the largest word in it!\nType 'exit' to leave"
  user_input = gets.strip.downcase

  user_input == "exit" ? exit() : ""

  def count_words(num, length)
    word_lengths = []
    while num < length
      word_lengths.push(@input_arr[num].length)
      num += 1
    end
    print "\nThe largest word, with a letter count of " + "#{word_lengths.max}" + ", is: "
    puts @input_arr[word_lengths.index(word_lengths.max)]
  end

  @input_arr = user_input.split(" ").to_a
  count_words(0, @input_arr.count)

end
