while true

  def start

    puts "\nGive me a phrase, and I will find the first unique character!\nType 'exit' to leave"
    user_input = gets.strip

    user_input == "exit" ? exit() : ""
    @input_arr = user_input.split("").to_a

    cycle(0)

  end

  def cycle(num)
    while num <= @input_arr.length
      letter = @input_arr[num]
      @input_arr.index(letter) == @input_arr.rindex(letter) ? letter_found(letter) : num += 1
    end
    num = @input_arr.length + 1
  end

  def letter_found(letter)
    if letter === " "
      puts "No unique characters!"
    elsif letter
      puts "\nThe first unique character is: #{letter}"
    else
      puts "No unique characters"
    end
    start
  end

  start
end
