while true

  puts "\n====== What is your word? ======= \nType exit if you wish to leave"
  @init_word = gets
  @word = @init_word.strip.downcase
  @word == "exit" ? exit() : "continue"

  @word_arr = (@word.split(%r{\s*}))

  def palindrome_check(num, fin)
    first_position = @word_arr[num]
    total_letters = @word_arr.length
    last_position = @word_arr[total_letters - fin]

    if first_position == last_position
      if num + 1 == total_letters
        puts "#@init_word is a palindrome! Try another!"
      else
        palindrome_check(num + 1, fin + 1)
      end
    else
      puts "#@init_word is not a palindrome! Try again!"
    end
  end

  palindrome_check(0, 1)

end
