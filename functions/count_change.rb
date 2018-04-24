while true

  def start

    @wallet = [0, 0, 0, 0, 0]

    puts "\nGive me a number (e.g. 965 = $9.65), and I will convert it to change!\nType '0' to leave"

    user_input = gets.strip
    user_input == "0" ? exit() : @user_input = user_input.to_i
    @user_input == 0 ? ( puts "Invalid input" ) : count(@user_input)

  end

  def find_change(change, coin, slot)
    while change >= coin
      change -= coin
      @wallet[slot] += 1
      count(change)
    end
  end

  def count(change)
    find_change(change, 100, 0)
    find_change(change, 25, 1)
    find_change(change, 10, 2)
    find_change(change, 5, 3)
    find_change(change, 1, 4)
    count_wallet
  end

  def count_wallet
    to_change = "$" + "#{@user_input.to_f / 100}"

    puts "\n#{to_change}:"
    puts "Dollars:    #{@wallet[0]}"
    puts "Quarters:   #{@wallet[1]}"
    puts "Dimes:      #{@wallet[2]}"
    puts "Nickels:    #{@wallet[3]}"
    puts "Pennies:    #{@wallet[4]}"
    start

  end

  start

end
