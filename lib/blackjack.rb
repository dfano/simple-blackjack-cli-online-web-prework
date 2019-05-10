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
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  cards = deal_card + deal_card
  display_card_total(cards)
  cards
end



def hit?(current_card_total)
  prompt_user
  input = get_user_input
  current_total = current_card_total
  if input == 'h'
    new_card = deal_card
    return current_total + new_card
  elsif input == 's'

  else
    invalid_command
  end
  # puts input
end

# hit?(10)

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
