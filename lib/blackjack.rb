def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(current_card_total)
  prompt_user
  answer = get_user_input
  if answer == "h"
    current_card_total = deal_card + current_card_total
    return current_card_total
  elsif answer == "s"
     return current_card_total
  else
    prompt_user
    invalid_command
  end    
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_card_total = initial_round
  until current_card_total > 21
    current_card_total = hit?(current_card_total)
  end
  display_card_total(current_card_total)
  end_game(current_card_total)
end
    
