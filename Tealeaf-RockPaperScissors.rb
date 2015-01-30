puts "Let's play Rock, Paper, Scissors!"
options = ['r', 'p', 's']

def winning_message(winning_choice)
  case winning_choice
  when 'r'
    puts "Rock smashes scissors."
  when 'p'
    puts "Paper wraps rock."
  when 's'
    puts "Scissors cuts paper."
  end
end

loop do

  begin
    puts "Choose one: (R/P/S)"
    player_choice = gets.chomp.downcase
  end until options.include?(player_choice)

  comp_choice = options.sample
  puts "The computer chose #{comp_choice}"

  if player_choice == comp_choice
    puts "You have tied!"
  elsif (player_choice == 'r' && comp_choice == 's') || (player_choice == 's' && comp_choice == 'p') || (player_choice == 'p' && comp_choice == 'r')
    winning_message(player_choice)
    puts "You win!"
  else
    winning_message(comp_choice)
    puts "Computer wins! :( "
  end

  puts "Play again? (y/n)"
  break if gets.chomp.downcase != 'y'

end

puts "Good game! Good bye!"